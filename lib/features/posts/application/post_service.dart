import 'dart:developer';

import 'package:cooknow/core/service/firebase_service.dart';
import 'package:cooknow/core/service/image_pick_service.dart';
import 'package:cooknow/core/utils/check_formats.dart';
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_post_dto.dart';
import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_service.g.dart';

class PostService {
  PostService({required this.ref});

  final PostServiceRef ref;

  /// Creates a new post using the provided [dto].
  ///
  /// This method is responsible for creating a new post based on the data
  /// provided in the [dto] parameter. It returns a [Future] that completes
  /// when the post creation process is finished.
  /// With the [dto] parameter is media file path, this method will upload
  /// the media file to the Firebase Storage and then create a new post.
  ///
  /// Example usage:
  /// ```dart
  /// CreatePostDto dto = CreatePostDto();
  /// await createPost(dto);
  /// ```
  Future<void> createPost(CreatePostDto dto) async {
    final postRepository = ref.read(postRepositoryProvider);
    final firebase = ref.read(firebaseServiceProvider);
    final imagePost = await firebase
        .uploadFile(XFile(dto.image, name: dto.image.split('/').last));
    dto = dto.copyWith(image: imagePost);
    for (var step in dto.steps) {
      final List<Future<String>> listFeatureMedia = step.medias
          .map((media) async => await firebase
              .uploadFile(XFile(media, name: media.split('/').last)))
          .toList();
      final listMedia = await Future.wait(listFeatureMedia);
      dto.steps[dto.steps.indexOf(step)] = step.copyWith(medias: listMedia);
    }
    await postRepository.createPost(dto);
  }

  Future<void> updatePost(UpdatePostDto dto) async {
    final postRepository = ref.read(postRepositoryProvider);
    final firebase = ref.read(firebaseServiceProvider);
    log(dto.toJson().toString());
    if (!isLinkOnline(dto.image)) {
      final imagePost = await firebase
          .uploadFile(XFile(dto.image, name: dto.image.split('/').last));
      dto = dto.copyWith(image: imagePost);
    }
    for (var step in dto.steps) {
      final List<Future<String>> listFeatureMedia = step.medias
          .map((media) async => isLinkOnline(media)
              ? media
              : await firebase
                  .uploadFile(XFile(media, name: media.split('/').last)))
          .toList();
      final listMedia = await Future.wait(listFeatureMedia);
      dto.steps[dto.steps.indexOf(step)] = step.copyWith(medias: listMedia);
    }
    await postRepository.updatePost(dto);
  }

  Future<void> removePost(String postId) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.removePost(postId);
  }

  Future<void> watchRemovePost(String postId) async {
    ref.watch(watchRemovePostProvider(postId));
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
