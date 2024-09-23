import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/comment.graphql.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/posts/data/dtos/create_comment_dto.dart';
import 'package:cooknow/features/posts/data/repositories/comment_repository.dart';
import 'package:cooknow/features/posts/data/repositories/impl/post_repository_imp.dart';
import 'package:cooknow/features/posts/domain/comment/comment.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_repository_imp.g.dart';

class CommentRepositoryImp implements CommentRepository {
  CommentRepositoryImp({required this.client});
  final GraphQLClient client;

  final _listCommentState = ims.InMemoryStore<List<Comment?>>([]);
  List<Comment?> get comments => _listCommentState.value;
  Stream<List<Comment?>> commentStateChanges() => _listCommentState.stream;

  @override
  Future<void> createComment(CreateCommentDto dto) => _getData(
      query: client.mutate$CreateComment(
        Options$Mutation$CreateComment(
          variables: Variables$Mutation$CreateComment(
            data: Input$CreateCommentDto.fromJson(dto.toJson()),
          ),
        ),
      ),
      builder: (data) {
        // final result = (data as Mutation$CreateComment).createComment;
        // _listCommentState.value = [
        //   Comment.fromJson(result.toJson())
        //   ..._listCommentState.value,
        // ];
      });

  @override
  Future<void> deleteComment(String id) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  StreamSubscription<void> watchComment(String id) {
    final Stream<QueryResult<Subscription$CreateComment>> streamResult =
        client.subscribe$CreateComment(
      Options$Subscription$CreateComment(
        variables: Variables$Subscription$CreateComment(postId: id),
      ),
    );
    return streamResult.listen((event) {
      final result = event.parsedData?.add_comment;
      _listCommentState.value = [
        Comment.fromJson(result!.toJson()),
        ..._listCommentState.value,
      ];
    });
  }

  @override
  Future<void> fetchCommentOfPost(String postId) => _getData(
      query: client.query$GetCommentsByPostId(
        Options$Query$GetCommentsByPostId(
          variables: Variables$Query$GetCommentsByPostId(
            postId: postId,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      ),
      builder: (data) {
        final result = (data as Query$GetCommentsByPostId).getCommentsByPostId;
        _listCommentState.value =
            result.map((e) => Comment.fromJson(e.toJson())).toList();
      });

  @override
  Future<void> updateComment(String id, String content) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }

  @override
  Future<void> dispose() async {
    _listCommentState.close();
  }

  Future<T> _getData<T>({
    required Future<QueryResult<dynamic>> query,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final result = await query;
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      log(error, name: 'CommentRepositoryImp');
      if (error.isEmpty) {
        final data = result.parsedData;
        return builder(data);
      } else {
        throw AppUnknownException();
      }
    } on SocketException {
      throw NoInternetException();
    } on Exception {
      throw AppUnknownException();
    }
  }
}

@Riverpod(keepAlive: true)
CommentRepositoryImp commentRepository(CommentRepositoryRef ref) {
  return CommentRepositoryImp(client: GraphqlClient.client.value);
}

@Riverpod(keepAlive: true)
Stream<List<Comment?>> commentStateChanges(CommentStateChangesRef ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  return commentRepository.commentStateChanges();
}

@riverpod
StreamSubscription<void> watchCreateComment(
    WatchCreateCommentRef ref, String id) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  final postRepository = ref.read(postRepositoryProvider);
  postRepository.updateQtyOfPost(id);
  final watchComment = commentRepository.watchComment(id);
  ref.onDispose(watchComment.cancel);
  return watchComment;
}
