import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'emoji_service.g.dart';

class EmojiService {
  final EmojiServiceRef ref;

  EmojiService({required this.ref});

  Future<void> updateEmojiOfPost(UpdateEmojiDto dto) async {
    final emojiRepository = ref.read(postRepositoryProvider);
    await emojiRepository.updateEmojiOfPost(dto);
  }
}

@riverpod
EmojiService emojiService(EmojiServiceRef ref) {
  return EmojiService(ref: ref);
}
