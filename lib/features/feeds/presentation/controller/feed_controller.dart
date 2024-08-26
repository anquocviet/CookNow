import 'package:cooknow/features/feeds/application/emoji_service.dart';
import 'package:cooknow/features/feeds/application/feed_service.dart';
import 'package:cooknow/features/posts/application/post_service.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_controller.g.dart';

@riverpod
class FeedController extends _$FeedController {
  @override
  FutureOr<void> build() {}

  Future<void> reactToPost(UpdateEmojiDto dto) async {
    final emojiService = ref.read(emojiServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => emojiService.updateEmojiOfPost(dto));
    if (state.hasError) throw state.error!;
  }

  Future<void> removePost(String postId) async {
    final postService = ref.read(postServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => postService.removePost(postId));
    if (state.hasError) throw state.error!;
  }

  Future<void> updateSavePost(String postId) async {
    final feedService = ref.read(feedServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => feedService.updateSavePost(postId));
    if (state.hasError) throw state.error!;
  }
}
