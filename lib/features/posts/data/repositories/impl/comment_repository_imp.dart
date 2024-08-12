import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/api/comment_api.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:cooknow/features/posts/data/repositories/comment_repository.dart';
import 'package:cooknow/features/posts/domain/comment/comment.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cooknow/core/exceptions/app_exception.dart' as ex;
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;

part 'comment_repository_imp.g.dart';

class CommentRepositoryImp implements CommentRepository {
  CommentRepositoryImp({required this.commentApi});
  final CommentApi commentApi;

  final _listCommentState = ims.InMemoryStore<List<Comment?>>([]);
  List<Comment?> get comments => _listCommentState.value;
  Stream<List<Comment?>> commentStateChanges() => _listCommentState.stream;

  @override
  Future<void> createComment(CreateCommentDto dto) {
    // TODO: implement createComment
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(String id) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<void> fetchCommentOfPost(String postId) => _getData(
        options: commentApi.fetchCommentOfPost(postId),
        builder: (data) => _listCommentState.value = data['getCommentsByPostId']
            .map<Comment?>((e) => Comment.fromJson(e))
            .toList(),
      );

  @override
  Future<void> updateComment(String id, String content) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }

  Future<T> _getData<T>({
    required dynamic options,
    required T Function(dynamic data) builder,
  }) async {
    assert(options is! QueryOptions || options is! MutationOptions,
        'Options must be QueryOptions or MutationOptions');
    try {
      final QueryResult result = options is QueryOptions
          ? await GraphqlClient.client.value.query(options)
          : await GraphqlClient.client.value.mutate(options);
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      log('CommentRepositoryError: $error');
      if (error.isEmpty) {
        final data = result.data!;
        return builder(data);
      } else {
        throw ex.UnknownException();
      }
    } on SocketException {
      throw ex.NoInternetException();
    } on Exception {
      throw ex.UnknownException();
    }
  }
}

@Riverpod(keepAlive: true)
CommentRepositoryImp commentRepository(CommentRepositoryRef ref) {
  return CommentRepositoryImp(commentApi: CommentApi());
}

@Riverpod(keepAlive: true)
Stream<List<Comment?>> commentStateChanges(CommentStateChangesRef ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  return commentRepository.commentStateChanges();
}
