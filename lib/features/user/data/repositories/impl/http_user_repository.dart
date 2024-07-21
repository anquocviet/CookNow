import 'dart:io';

import 'package:cooknow/core/api/user_api.dart';
import 'package:cooknow/core/exceptions/api_exception.dart' as api_exception;
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/user/data/repositories/user_repository.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_user_repository.g.dart';

class HttpUserRepository implements UserRepository {
  HttpUserRepository({required this.userApi});

  final UserApi userApi;

  final _userState = ims.InMemoryStore<User?>(null);
  User? get currentUser => _userState.value;

  @override
  Future<User> getUser(String id) => _getData(
        options: userApi.getUser(id),
        builder: (data) {
          final user = User.fromJson(data['user']);
          _userState.value = user;
          return user;
        },
      );

  Future<T> _getData<T>({
    required QueryOptions options,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final QueryResult result =
          await GraphqlClient.client.value.query(options);
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      if (error.isEmpty) {
        final data = result.data!;
        return builder(data);
      } else {
        throw api_exception.UnknownException();
      }
    } on SocketException {
      throw api_exception.NoInternetException();
    }
  }
}

@Riverpod(keepAlive: true)
HttpUserRepository userRepository(UserRepositoryRef ref) {
  final userRepository = HttpUserRepository(userApi: UserApi());
  return userRepository;
}
