import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_post_dto.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';

abstract class PostRepository {
  Future<void> fetchPostOfUser(String id);
  Future<List<Post>> getPostOfUser(String id);
  Future<void> createPost(CreatePostDto dto);
  Future<void> updatePost(UpdatePostDto dto);
  Future<void> updateEmojiOfPost(UpdateEmojiDto dto);
}
