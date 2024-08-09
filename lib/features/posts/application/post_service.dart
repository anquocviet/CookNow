import 'package:cooknow/core/service/image_pick_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_service.g.dart';

class PostService {
  PostService({required this.ref});

  final Ref ref;

  Future<String> chooseImage() async {
    final imagePick = ref.read(imagePickServiceProvider);
    final List<XFile> list = await imagePick.pickImage(ImageSource.gallery);
    return list.first.path;
  }
}

@riverpod
PostService postService(PostServiceRef ref) {
  return PostService(ref: ref);
}
