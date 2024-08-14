import 'dart:io';

import 'package:cooknow/core/utils/check_formats.dart';
import 'package:cooknow/core/widget/gallery_media_view_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MediaStep extends StatefulWidget {
  const MediaStep({
    super.key,
    required this.listPath,
    required this.currentPath,
    this.onRemove,
  });

  final List<String> listPath;
  final String currentPath;
  final void Function()? onRemove;

  @override
  State<MediaStep> createState() => _MediaStepState();
}

class _MediaStepState extends State<MediaStep> {
  final ValueNotifier<bool> _isVideo = ValueNotifier<bool>(false);
  late VideoPlayerController _controller;

  @override
  void initState() {
    // Listen to the change of the current path to determine if it is a video
    _isVideo.addListener(() {
      if (_isVideo.value) {
        if (isLinkOnline(widget.currentPath)) {
          _controller = VideoPlayerController.networkUrl(
            Uri.parse(widget.currentPath),
          )..initialize().then((_) {
              setState(() {});
            });
        } else {
          _controller = VideoPlayerController.file(
            File(widget.currentPath),
          )..initialize().then((_) {
              setState(() {});
            });
        }
      }
    });
    super.initState();
  }

  void _openMedia() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryMediaViewWrapper(
          initialIndex: widget.listPath.indexOf(widget.currentPath),
          galleryItems: widget.listPath,
          scrollDirection: Axis.horizontal,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (_isVideo.value) _controller.dispose();
    _isVideo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Check if the current path is a video
    setState(() {
      _isVideo.value = isVideo(widget.currentPath);
    });

    return ValueListenableBuilder(
      valueListenable: _isVideo,
      builder: (context, isVideo, child) {
        return Stack(
          children: [
            isVideo
                ? GestureDetector(
                    onTap: _openMedia,
                    child: _controller.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : const CircularProgressIndicator(),
                  )
                : GestureDetector(
                    onTap: _openMedia,
                    child: isLinkOnline(widget.currentPath)
                        ? Image.network(
                            widget.currentPath,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            widget.currentPath,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                  ),
            if (widget.onRemove != null)
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () => widget.onRemove!()
                  //
                  ,
                  child: const Icon(
                    Icons.remove_circle_rounded,
                    size: 18,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
