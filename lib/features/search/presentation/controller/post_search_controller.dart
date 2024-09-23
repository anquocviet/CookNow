import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/search/application/search_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_search_controller.g.dart';

@riverpod
class PostSearchController extends _$PostSearchController {
  @override
  FutureOr<List<Post>?> build() {
    return null;
  }

  Future<void> searchPost(String data, double take, double skip) async {
    final searchService = ref.read(searchServiceProvider);
    state = await AsyncValue.guard(
        () => searchService.searchPost(data, take, skip));
  }
}
