import 'package:cooknow/features/feeds/application/emoji_service.dart';
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
}
