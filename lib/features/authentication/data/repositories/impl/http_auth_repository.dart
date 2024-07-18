import 'dart:io';

import 'package:cooknow/core/api/auth_api.dart';
import 'package:cooknow/core/exceptions/api_exception.dart' as api_exception;
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/authentication/data/repositories/auth_repository.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'http_auth_repository.g.dart';

class HttpAuthRepository implements AuthRepository {
  HttpAuthRepository({required this.authApi});

  final AuthApi authApi;
  late SharedPreferences prefs;
  final _accountState = ims.InMemoryStore<Account?>(null);
  Account? get currentAccount => _accountState.value;

  @override
  Future<void> login(String username, String password) => _getData(
        options: authApi.login(username, password),
        builder: (data) async {
          final decodedToken = decodeToken(data['login']['access_token']);
          prefs = await SharedPreferences.getInstance();
          _accountState.value = Account.fromJson(decodedToken);
          // Key is sub, username, password
          decodedToken
              .forEach((key, value) => prefs.setString(key, value.toString()));
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
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      if (error.isEmpty) {
        final data = result.data;
        return builder(data);
      } else {
        throw api_exception.UnknownException();
      }
    } on SocketException {
      throw api_exception.NoInternetException();
    }
  }
}

@riverpod
HttpAuthRepository authRepository(AuthRepositoryRef ref) {
  return HttpAuthRepository(authApi: AuthApi());
}
