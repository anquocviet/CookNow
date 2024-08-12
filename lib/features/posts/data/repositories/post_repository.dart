import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';

abstract class PostRepository {
  Future<void> fetchPostOfUser(String id);
  Future<void> createPost(CreatePostDto dto);
}
