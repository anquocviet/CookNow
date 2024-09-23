import 'dart:developer';

import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/graphql/__generated/search.graphql.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/search/data/repositories/history_search_repository.dart';
import 'package:cooknow/features/search/domain/history_search.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_search_repository_imp.g.dart';

class HistorySearchRepositoryImp implements HistorySearchRepository {
  HistorySearchRepositoryImp({required this.client});
  final GraphQLClient client;

  final _listHistoryState = ims.InMemoryStore<List<HistorySearch>>([]);
  List<HistorySearch> get history => _listHistoryState.value;
  Stream<List<HistorySearch>> historyStateChanges() => _listHistoryState.stream;

  @override
  Future<void> getHistorySearch(String userId) => _getData(
        query: client.query$GetHistorySearchOfUser(
          Options$Query$GetHistorySearchOfUser(
            variables: Variables$Query$GetHistorySearchOfUser(
              id: userId,
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result =
              (data as Query$GetHistorySearchOfUser).getHistorySearchOfUser;
          _listHistoryState.value = result.histories
              .map((e) => HistorySearch.fromJson(e.toJson()))
              .take(5)
              .toList();
        },
      );

  @override
  Future<void> addHistorySearch(String id, String data) => _getData(
      query: client.mutate$AddHistorySearchOfUser(
        Options$Mutation$AddHistorySearchOfUser(
          variables: Variables$Mutation$AddHistorySearchOfUser(
            id: id,
            data: data,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      ),
      builder: (data) {
        final result =
            (data as Mutation$AddHistorySearchOfUser).addHistorySearchOfUser;
        final histories = result.histories
            .map((e) => HistorySearch.fromJson(e.toJson()))
            .take(5)
            .toList();
        _listHistoryState.value = histories;
      });

  @override
  Future<void> removeSearch(String userId, String idSearch) => _getData(
      query: client.mutate$DeleteHistorySearchOfUser(
        Options$Mutation$DeleteHistorySearchOfUser(
          variables: Variables$Mutation$DeleteHistorySearchOfUser(
            userId: userId,
            idSearch: idSearch,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      ),
      builder: (data) {
        final result = (data as Mutation$DeleteHistorySearchOfUser)
            .deleteHistorySearchOfUser;
        final histories = result.histories
            .map((e) => HistorySearch.fromJson(e.toJson()))
            .toList();
        _listHistoryState.value = histories;
      });

  @override
  Future<void> clearHistorySearch() {
    // TODO: implement clearHistorySearch
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<dynamic>>> search(
          String data, double take, double skip) =>
      _getData(
        query: client.query$Search(
          Options$Query$Search(
            variables: Variables$Query$Search(
              data: Input$GetPostDto(data: data, take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final resultPost = (data as Query$Search).searchPost;
          final resultUser = (data).searchUser;
          final posts =
              resultPost.map((e) => Post.fromJson(e.toJson())).toList();
          final users =
              resultUser.map((e) => User.fromJson(e.toJson())).toList();
          return {
            'posts': posts,
            'users': users,
          };
        },
      );

  @override
  Future<List<Post>> searchPost(String data, double take, double skip) =>
      _getData(
        query: client.query$SearchPost(
          Options$Query$SearchPost(
            variables: Variables$Query$SearchPost(
              data: Input$GetPostDto(data: data, take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Query$SearchPost).searchPost;
          return result.map((e) => Post.fromJson(e.toJson())).toList();
        },
      );

  @override
  Future<List<User>> searchUser(String data, double take, double skip) =>
      _getData(
        query: client.query$SearchUser(
          Options$Query$SearchUser(
            variables: Variables$Query$SearchUser(
              data: Input$GetPostDto(data: data, take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Query$SearchUser).searchUser;
          return result.map((e) => User.fromJson(e.toJson())).toList();
        },
      );

  Future<T> _getData<T>({
    required Future<QueryResult<dynamic>> query,
    required T Function(dynamic data) builder,
  }) async {
    final result = await query;
    final String error =
        result.exception?.graphqlErrors.firstOrNull?.message ?? '';
    if (error.isEmpty) {
      final data = result.parsedData;
      return builder(data);
    } else {
      log(result.exception.toString(), name: 'HistorySearchRepositoryImp');
      if (result.exception?.graphqlErrors.isNotEmpty ?? true) {
        final error = result.exception!.graphqlErrors.first.message;
        if (error == AuthExceptionFromServer.jwtExpired) {
          throw TokenExpiredException();
        } else if (error == AuthExceptionFromServer.postNotFound) {
          throw PostNotFoundException();
        } else {
          throw ServerErrorException();
        }
      } else {
        throw NoInternetException();
      }
    }
  }
}

@riverpod
HistorySearchRepositoryImp historySearchRepository(
    HistorySearchRepositoryRef ref) {
  return HistorySearchRepositoryImp(client: GraphqlClient.client.value);
}

@riverpod
Stream<List<HistorySearch>> searchStateChange(SearchStateChangeRef ref) {
  final hsProvider = ref.watch(historySearchRepositoryProvider);
  return hsProvider.historyStateChanges();
}
