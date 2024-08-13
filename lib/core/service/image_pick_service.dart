import 'dart:developer';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_pick_service.g.dart';

class ImagePickService {
  final ImagePicker _picker = ImagePicker();

  /// Picks an image from the device's gallery or camera.
  /// Default is choose an image from gallery.
  ///
  /// Returns a list of [XFile] objects representing the selected image(s).
  ///
  /// Throws an exception if the image picking process fails.
  Future<List<XFile>> pickImage(
    ImageSource source, {
    bool isMedia = false,
    bool isVideo = false,
    bool isMultiImage = false,
    Duration? videoDuration,
    int? limit,
  }) async {
    try {
      if (isVideo) {
        final XFile? file = await _picker.pickVideo(
          source: source,
          maxDuration: videoDuration,
        );
        return file == null ? [] : [file];
      } else if (isMultiImage) {
        final List<XFile> pickedFileList = isMedia
            ? await _picker.pickMultipleMedia(
                limit: limit,
              )
            : await _picker.pickMultiImage(
                limit: limit,
              );
        return pickedFileList;
      } else if (isMedia) {
        final XFile? media = await _picker.pickMedia();
        return media == null ? [] : [media];
      } else {
        final XFile? pickedFile = await _picker.pickImage(
          source: source,
        );
        return pickedFile == null ? [] : [pickedFile];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}

@Riverpod(keepAlive: true)
ImagePickService imagePickService(ImagePickServiceRef ref) {
  return ImagePickService();
}
