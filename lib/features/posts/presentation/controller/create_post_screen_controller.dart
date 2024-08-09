import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post_screen_controller.g.dart';

@riverpod
class CreatePostScreenController extends _$CreatePostScreenController {
  @override
  FutureOr<String> build() {
    return 'assets/create_post_image.png';
  }

  Future<void> chooseImage() async {
    final postService = ref.read(postServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => postService.chooseImage());
  }
}
