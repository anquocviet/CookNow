import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:cooknow/features/posts/data/repositories/impl/comment_repository_imp.dart';
import 'package:cooknow/features/posts/domain/comment/comment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_service.g.dart';

class CommentService {
  CommentService({required this.ref});

  final CommentServiceRef ref;

  Future<void> fetchCommentOfPost(String postId) async {
    final commentRepository = ref.read(commentRepositoryProvider);
    await commentRepository.fetchCommentOfPost(postId);
  }

  Future<void> createComment(CreateCommentDto dto) async {
    final commentRepository = ref.read(commentRepositoryProvider);
    await commentRepository.createComment(dto);
  }

  Stream<List<Comment?>> watchListComment() {
    final commentRepository = ref.read(commentRepositoryProvider);
    return commentRepository.commentStateChanges();
  }
}

@riverpod
CommentService commentService(CommentServiceRef ref) {
  return CommentService(ref: ref);
}
