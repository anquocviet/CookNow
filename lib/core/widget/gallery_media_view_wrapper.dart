import 'dart:developer';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:cooknow/core/utils/check_formats.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:video_player/video_player.dart';

class GalleryMediaViewWrapper extends StatefulWidget {
  GalleryMediaViewWrapper({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<String> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _GalleryMediaViewWrapperState();
  }
}

class _GalleryMediaViewWrapperState extends State<GalleryMediaViewWrapper> {
  late int currentIndex = widget.initialIndex;
  late List<VideoPlayerController> _videoPlayerControllers;
  late List<ChewieController> _chewieControllers;

  void onPageChanged(int index) {
    _videoPlayerControllers.forEach((element) => element.pause());
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    _videoPlayerControllers = widget.galleryItems
        .where((e) => isVideo(e))
        .map((e) => isLinkOnline(e)
            ? VideoPlayerController.networkUrl(Uri.parse(e))
            : VideoPlayerController.file(File(e)))
        .toList();
    _chewieControllers = _videoPlayerControllers
        .map((e) => ChewieController(videoPlayerController: e))
        .toList();

    super.initState();
  }

  @override
  dispose() {
    for (var element in _videoPlayerControllers) {
      log('GalleryMediaViewWrapper dispose controller');
      element.dispose();
    }
    _videoPlayerControllers.clear();
    for (var element in _chewieControllers) {
      element.dispose();
    }
    _chewieControllers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.length,
              loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
            Positioned(
              top: 32,
              right: 16,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  size: 32,
                ),
                style: ButtonStyle(
                  iconColor: WidgetStateProperty.all(Colors.white70),
                ),
              ),
            ),
            // if (!_isVideo)
            // Container(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Text(
            //     "Image ${currentIndex + 1}",
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 17.0,
            //       decoration: null,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final String item = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: isLinkOnline(item) ? NetworkImage(item) : AssetImage(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: item),
      // When link is video, show video
      errorBuilder: (context, error, stackTrace) {
        final index = _videoPlayerControllers.indexWhere(
          (element) => element.dataSource.contains(item),
        );
        if (index == -1) {
          return const Center(
            child: Text(
              'Error loading image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          );
        }
        if (!_videoPlayerControllers.elementAt(index).value.isInitialized) {
          _videoPlayerControllers.elementAt(index).initialize().then((_) {
            setState(() {});
          });
        }
        return Center(
          child: _videoPlayerControllers.elementAt(index).value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerControllers
                      .elementAt(index)
                      .value
                      .aspectRatio,
                  child: Chewie(
                    controller: _chewieControllers.elementAt(index),
                  ),
                )
              : const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Loading'),
                  ],
                ),
        );
      },
    );
  }
}
