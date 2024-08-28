import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_service.g.dart';

class FeedService {
  FeedService({required this.ref});
  final FeedServiceRef ref;

  Future<void> fetchPostForUser(String id, double take, double skip) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPostForUser(id, take, skip);
  }

  Future<void> fetchPost(String id) async {
    final postRepository = ref.read(postRepositoryProvider);
    await postRepository.fetchPost(id);
  }

  Future<List<Post>> getPostOfUser(String id, double take, double skip) async {
    final postRepository = ref.read(postRepositoryProvider);
    return await postRepository.getPostOfUser(id, take, skip);
  }

  Future<List<Post>> getPostOfUserSaved(
      String id, double take, double skip) async {
    final postRepository = ref.read(postRepositoryProvider);
    return await postRepository.getPostOfUserSaved(id, take, skip);
  }

  Future<void> fetchPostOfUserFollowing(double take, double skip) async {
    final postRepository = ref.read(postRepositoryProvider);
    final user = ref.read(userRepositoryProvider).currentUser;
    await postRepository.fetchPostOfUserFollowing(user!.id, take, skip);
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

  void clearPost() {
    final postRepository = ref.read(postRepositoryProvider);
    postRepository.clearPost();
  }
}

@riverpod
FeedService feedService(FeedServiceRef ref) {
  return FeedService(ref: ref);
}
