import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';

abstract class PostRepository {
  Future<void> fetchPostOfUser(String id);
  Future<void> createPost(CreatePostDto dto);
  Future<void> updateEmojiOfPost(UpdateEmojiDto dto);
}
