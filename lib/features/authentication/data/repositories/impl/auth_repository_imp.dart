import 'dart:developer';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:cooknow/features/authentication/data/dtos/register_dto.dart';
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_imp.g.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({required this.authApi, required this.storeLocalData});
  StoreLocalData storeLocalData;

  final AuthApi authApi;
  final _accountState = ims.InMemoryStore<Account?>(null);
  Stream<Account?> authStateChanges() => _accountState.stream;
  Account? get currentAccount => _accountState.value;
  bool get isLoggedIn => _accountState.value != null;

  @override
  Future<void> login(String username, String password) => _getData(
        options: authApi.login(username, password),
        builder: (data) async {
          final decodedToken = decodeToken(data['login']['access_token']);
          _accountState.value = Account.fromJson(decodedToken);
          await storeLocalData.saveData(
              StoreVariable.token, data['login']['access_token']);
        },
      );

  @override
  Future<void> register(RegisterDto registerDto) => _getData(
        options: authApi.register(registerDto.toJson()),
        builder: (data) => (),
      );

  @override
  Future<void> logout() async {
    _accountState.value = null;
    storeLocalData.removeData(StoreVariable.token);
  }

  @override
  Future<void> validateToken(String token) => _getData(
      options: authApi.validateToken(token),
      builder: (data) {
        final decodedToken = decodeToken(token);
        _accountState.value = Account.fromJson(decodedToken);
      });

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
  return AuthRepositoryImp(
      authApi: AuthApi(), storeLocalData: StoreLocalData());
}

@Riverpod(keepAlive: true)
Stream<Account?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
}
