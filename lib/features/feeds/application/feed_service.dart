import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_service.g.dart';

class FeedService {
  FeedService({required this.ref});
  final FeedServiceRef ref;

  Future<void> fetchPostForUser(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPostForUser(id);
  }

  Future<void> fetchPost(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPost(id);
  }

  Future<List<Post>> getPostOfUser(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    return await postRepository.getPostOfUser(id);
  }

  Future<List<Post>> getPostOfUserSaved(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    return await postRepository.getPostOfUserSaved(id);
  }

  Future<void> fetchPostOfUserFollowing(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPostOfUserFollowing(id);
  }

  List<Post?> getListPost() {
    final postRepository = ref.read(postRepositoryProvider);
    return postRepository.posts;
  }

  Stream<List<Post?>> watchListPost() {
    final postRepository = ref.read(postRepositoryProvider);
    return postRepository.postStateChanges();
  }

  Future<void> updateSavePost(String postId) async {
    final userRepository = ref.read(userRepositoryProvider);
    await userRepository.updateSavePost(postId);
  }
}

@riverpod
FeedService feedService(FeedServiceRef ref) {
  return FeedService(ref: ref);
}

@riverpod
int lengthUserPost(LengthUserPostRef ref) {
  return ref.read(feedServiceProvider).getListPost().length;
}
