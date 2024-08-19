import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_post_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post_screen_controller.g.dart';

@riverpod
class CreatePostScreenController extends _$CreatePostScreenController {
  @override
  FutureOr<void> build() {}

  Future<void> createPost(CreatePostDto dto) async {
    final postService = ref.read(postServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => postService.createPost(dto));
    if (state.hasError) throw state.error!;
  }

  Future<void> updatePost(UpdatePostDto dto) async {
    final postService = ref.read(postServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => postService.updatePost(dto));
    if (state.hasError) throw state.error!;
  }
}

@riverpod
class ValueCreatePostScreenController
    extends _$ValueCreatePostScreenController {
  @override
  FutureOr<List<String>> build() {
    return ['assets/create_post_image.png'];
  }

  Future<void> initImage(String images) async {
    state = AsyncValue.data([images]);
  }

  Future<void> chooseMedia({bool? isMultiImage, bool? isVideo}) async {
    final postService = ref.read(postServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () => postService.chooseMedia(isMultiImage ?? false, isVideo ?? false));
    if (state.hasError) throw state.error!;
  }

  void resetState() {
    state = const AsyncValue.data([]);
  }
}
