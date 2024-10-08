import 'dart:developer';

import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/auth.graphql.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/authentication/data/dtos/device_dto.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_imp.g.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({
    required this.client,
    required this.ref,
  });

  final GraphQLClient client;
  final AuthRepositoryRef ref;

  @override
  Future<String> login(String username, String password, DeviceDto deviceDto) =>
      _getData(
          query: client.mutate$Login(
            Options$Mutation$Login(
              variables: Variables$Mutation$Login(
                username: username,
                password: password,
                device: Input$DeviceDto.fromJson(deviceDto.toJson()),
              ),
              fetchPolicy: FetchPolicy.noCache,
            ),
          ),
          builder: (data) => (data as Mutation$Login).login.access_token);

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

  @override
  Future<bool> logout(String token) => _getData(
        query: client.mutate$Logout(
          Options$Mutation$Logout(
            variables: Variables$Mutation$Logout(
              data: token,
            ),
          ),
        ),
        builder: (data) => (data as Mutation$Logout).logout,
      );

  Future<T> _getData<T>({
    required Future<QueryResult<dynamic>> query,
    required T Function(dynamic data) builder,
  }) async {
    final result = await query;
    if (!result.hasException) {
      final data = result.parsedData;
      return builder(data);
    }
    log(result.exception.toString(), name: 'AuthRepositoryImp');
    if (result.exception?.graphqlErrors.isNotEmpty ?? true) {
      final error = result.exception!.graphqlErrors.first.message;
      if (error == AuthExceptionFromServer.jwtExpired ||
          error == AuthExceptionFromServer.jwtInvalid) {
        ref.read(authServiceProvider).removeToken();
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

@Riverpod(keepAlive: true)
AuthRepositoryImp authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImp(client: GraphqlClient.client.value, ref: ref);
}
