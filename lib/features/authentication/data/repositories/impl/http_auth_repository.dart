import 'dart:developer';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/exceptions/api_exception.dart';
import 'package:cooknow/core/exceptions/auth_exception.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_auth_repository.g.dart';

class HttpAuthRepository implements AuthRepository {
  HttpAuthRepository({required this.authApi, required this.storeLocalData});
  StoreLocalData storeLocalData;

  final AuthApi authApi;
  final _accountState = ims.InMemoryStore<Account?>(null);
  final _isLoggedInState = ims.InMemoryStore<bool>(false);
  Stream<bool?> authStateChanges() => _isLoggedInState.stream;
  Account? get currentAccount => _accountState.value;
  bool get isLoggedIn => _isLoggedInState.value;

  @override
  Future<void> login(String username, String password) => _getData(
        options: authApi.login(username, password),
        builder: (data) async {
          final decodedToken = decodeToken(data['login']['access_token']);
          _accountState.value = Account.fromJson(decodedToken);
          _isLoggedInState.value = true;
          await storeLocalData.saveData(
              StoreVariable.token, data['login']['access_token']);
        },
      );

  @override
  Future<void> register(RegisterDto registerDto) => _getData(
        options: authApi.register(registerDto.toJson()),
        builder: (data) async {
          final decodedToken = decodeToken(data['register']['access_token']);
          _accountState.value = Account.fromJson(decodedToken);
          _isLoggedInState.value = true;
          await storeLocalData.saveData(
              StoreVariable.token, data['register']['access_token']);
        },
      );

  @override
  Future<void> logout() async {
    _accountState.value = null;
    _isLoggedInState.value = false;
    storeLocalData.removeData(StoreVariable.token);
  }

  @override
  Future<void> validateToken(String token) => _getData(
        options: authApi.validateToken(token),
        builder: (data) => _isLoggedInState.value = true,
      );

  @override
  Future<void> checkUserNotExist(String username) => _getData(
        options: authApi.checkUserNotExist(username),
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
          throw UserAlreadyExistsException();
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
HttpAuthRepository authRepository(AuthRepositoryRef ref) {
  return HttpAuthRepository(
      authApi: AuthApi(), storeLocalData: StoreLocalData());
}

@Riverpod(keepAlive: true)
Stream<bool?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
}
