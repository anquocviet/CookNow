import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/exceptions/api_exception.dart' as api_exception;
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/core/utils/store_local_data.dart';
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
  Account? get currentAccount => _accountState.value;

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
  Future<void> logout() {
    _accountState.value = null;
    return storeLocalData.removeData(StoreVariable.token);
  }

  @override
  Future<bool> validateToken(String token) => _getData(
        options: authApi.validateToken(token),
        builder: (data) => data['validateToken'],
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
        final data = result.data;
        return builder(data);
      } else {
        log(error.toString());
        throw api_exception.ServerException();
      }
    } on SocketException {
      throw api_exception.NoInternetException();
    }
  }
}

@Riverpod(keepAlive: true)
HttpAuthRepository authRepository(AuthRepositoryRef ref) {
  return HttpAuthRepository(
      authApi: AuthApi(), storeLocalData: StoreLocalData());
}
