import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_service.g.dart';

class PostService {
  PostService({required this.ref});

  final Ref ref;

  Future<void> fetchPostOfUser(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPostOfUser(id);
  }

  Stream<List<Post?>> watchListPost() {
    final postRepository = ref.read(postRepositoryProvider);
    return postRepository.postStateChanges();
  }
}

@riverpod
PostService postService(PostServiceRef ref) {
  return PostService(ref: ref);
}
