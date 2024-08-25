import 'dart:developer';

import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/auth.graphql.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_imp.g.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({
    required this.client,
  });

  final GraphQLClient client;

  @override
  Future<String> login(String username, String password) => _getData(
      query: client.query$Login(
        Options$Query$Login(
          variables: Variables$Query$Login(
            username: username,
            password: password,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      ),
      builder: (data) => (data as Query$Login).login.access_token);

  @override
  Future<void> register(RegisterDto registerDto) => _getData(
        query: client.mutate$Register(
          Options$Mutation$Register(
            variables: Variables$Mutation$Register(
              data: Input$CreateUserDto.fromJson(registerDto.toJson()),
            ),
          ),
        ),
        builder: (data) => (),
      );

  @override
  Future<void> validateToken(String token) => _getData(
        query: client.query$ValidateToken(
          Options$Query$ValidateToken(
            variables: Variables$Query$ValidateToken(
              token: token,
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {},
      );

  @override
  Future<void> checkUserNotExist(String data) => _getData(
        query: client.query$UserNotExists(
          Options$Query$UserNotExists(
            variables: Variables$Query$UserNotExists(
              data: data,
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {},
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
      log('${result.exception}', name: 'AuthRepositoryImp');
      if (result.exception?.graphqlErrors.isNotEmpty ?? true) {
        final error = result.exception!.graphqlErrors.first.message;
        if (error == AuthExceptionFromServer.jwtExpired ||
            error == AuthExceptionFromServer.jwtInvalid) {
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
  return AuthRepositoryImp(client: GraphqlClient.client.value);
}
