import 'dart:io';

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

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  late VideoPlayerController _controller;
  late bool _isVideo;
  @override
  void initState() {
    const String regexCheckVideo = r'^(mp4|mov)$';
    _isVideo = RegExp(regexCheckVideo, caseSensitive: false)
        .hasMatch(widget.galleryItems.elementAt(currentIndex).split('.').last);
    if (_isVideo) {
      _controller = VideoPlayerController.file(
        File(widget.galleryItems.elementAt(currentIndex)),
      )..initialize().then((_) {
          setState(() {
            _controller.play();
          });
        });
    }
    super.initState();
  }

  @override
  dispose() {
    if (_isVideo) {
      _controller.dispose();
    }
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
          alignment: _isVideo ? Alignment.center : Alignment.bottomCenter,
          children: <Widget>[
            _isVideo
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : PhotoViewGallery.builder(
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
            if (!_isVideo)
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Image ${currentIndex + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    decoration: null,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final String item = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: AssetImage(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: item),
    );
  }
}
