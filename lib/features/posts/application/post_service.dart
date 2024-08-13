import 'package:cooknow/core/service/image_pick_service.dart';
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_service.g.dart';

class PostService {
  PostService({required this.ref});

  final Ref ref;

  Future<void> createPost(CreatePostDto dto) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.createPost(dto);
  }

  Future<List<String>> chooseMedia(bool isMultiImage, bool isVideo) async {
    final imagePick = ref.read(imagePickServiceProvider);
    final List<XFile> list = await imagePick.pickImage(
      ImageSource.gallery,
      isMultiImage: isMultiImage,
      isVideo: isVideo,
    );
    if (list.isEmpty) {
      throw 'Không có ảnh hoặc video nào được chọn';
    }
    return list.map((e) => e.path).toList();
  }
}

@riverpod
PostService postService(PostServiceRef ref) {
  return PostService(ref: ref);
}
