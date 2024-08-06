import 'dart:developer';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_imp.g.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({
    required this.authApi,
  });

  final AuthApi authApi;

  @override
  Future<String> login(String username, String password) => _getData(
        options: authApi.login(username, password),
        builder: (data) => data['login']['access_token'],
      );

  @override
  Future<void> register(RegisterDto registerDto) => _getData(
        options: authApi.register(registerDto.toJson()),
        builder: (data) => (),
      );

  @override
  Future<void> validateToken(String token) =>
      _getData(options: authApi.validateToken(token), builder: (data) {});

  @override
  Future<void> checkUserNotExist(String data) => _getData(
        options: authApi.checkUserNotExist(data),
        builder: (data) => data['userExists'],
      );

  Future<T> _getData<T>({
    required QueryOptions options,
    required T Function(dynamic data) builder,
  }) async {
    final QueryResult result = await GraphqlClient.client.value.query(options);
    if (!result.hasException) {
      final data = result.data;
      return builder(data);
    } else {
      log('Error: ${result.exception}');
      if (result.exception?.graphqlErrors.isNotEmpty ?? true) {
        final error = result.exception!.graphqlErrors.first.message;
        if (error == AuthExceptionFromServer.jwtExpired) {
          throw TokenExpiredException();
        } else if (error == AuthExceptionFromServer.userNotFound) {
          throw InvalidUsernameOrPasswordException();
        } else if (error == AuthExceptionFromServer.userAlreadyExists) {
          throw MailOrPhoneIsAlreadyInUseException();
        } else {
          throw ServerErrorException();
        }
      } else {
        throw NoInternetException();
      }
    }
  }
}

@Riverpod(keepAlive: true)
AuthRepositoryImp authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImp(authApi: AuthApi());
}
