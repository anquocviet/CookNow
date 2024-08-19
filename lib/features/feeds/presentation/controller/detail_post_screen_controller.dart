import 'package:cooknow/features/feeds/application/comment_service.dart';
import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_post_screen_controller.g.dart';

@riverpod
class DetailPostScreenController extends _$DetailPostScreenController {
  @override
  FutureOr<void> build() {}

  Future<void> commentToPost(CreateCommentDto dto) async {
    final commentService = ref.read(commentServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => commentService.createComment(dto));
    if (state.hasError) throw state.error!;
  }
}
