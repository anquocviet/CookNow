import 'dart:io';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/api/user_api.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:cooknow/features/authentication/data/api_exception.dart'
    as api_exception;
import 'package:jwt_decoder/jwt_decoder.dart';

class HttpAuthRepository implements AuthRepository {
  HttpAuthRepository({required this.authApi, required this.userApi});

  final AuthApi authApi;
  final UserApi userApi;

  @override
  Future<User> login(String username, String password) => _getData(
        options: authApi.login(username, password),
        builder: (data) {
          Map<String, dynamic> decodedToken = JwtDecoder.decode(data['login']);
          final String id = decodedToken['id'];
          return _getData(
            options: userApi.getUser(id),
            builder: (data) => User.fromJson(data['user']),
          ) as User;
        },
      );

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  Future<T> _getData<T>({
    required QueryOptions options,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final QueryResult result =
          await GraphqlClient.client.value.query(options);
      final int? statusCode =
          result.context.entry<HttpLinkResponseContext>()?.statusCode;
      if (statusCode != null) {
        switch (statusCode) {
          case 200:
            final data = result.data!;
            return builder(data);
          default:
            throw api_exception.UnknownException();
        }
      } else {
        throw api_exception.UnknownException();
      }
    } on SocketException {
      throw api_exception.NoInternetException();
    }
  }
}

/// Providers used by rest of the app
final authRepositoryProvider = Provider<HttpAuthRepository>(
  (ref) => HttpAuthRepository(authApi: AuthApi(), userApi: UserApi()),
);
