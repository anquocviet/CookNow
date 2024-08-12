import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_service.g.dart';

class FeedService {
  FeedService({required this.ref});
  final FeedServiceRef ref;

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
FeedService feedService(FeedServiceRef ref) {
  return FeedService(ref: ref);
}
