import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';

abstract class CommentRepository {
  Future<void> fetchCommentOfPost(String postId);
  Future<void> createComment(CreateCommentDto dto);
  Future<void> updateComment(String id, String content);
  Future<void> deleteComment(String id);
  Future<void> dispose();
}
