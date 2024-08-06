import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/api/user_api.dart';
import 'package:cooknow/core/exceptions/app_exception.dart' as ex;
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/data/repositories/user_repository.dart';
import 'package:cooknow/features/user/domain/account/account.dart';
import 'package:cooknow/features/user/domain/user/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_imp.g.dart';

class UserRepositoryImp implements UserRepository {
  UserRepositoryImp({required this.userApi});

  final _userState = ims.InMemoryStore<User?>(null);
  User? get currentUser => _userState.value;
  Stream<User?> userStateChanges() => _userState.stream;
  User? get currentAccount => _userState.value;

  final UserApi userApi;

  @override
  Future<void> fetchUser(String id) => _getData(
        options: userApi.getUser(id),
        builder: (data) {
          final user = User.fromJson(data['user']);
          _userState.value = user;
        },
      );

  @override
  Future<void> updateUser(UpdateUserDto dto) => _getData(
      options: userApi.updateUser(dto),
      builder: (data) {
        UpdateUserDto dto = UpdateUserDto.fromJson(data['updateUser']);
        _userState.value = _userState.value?.copyWith(
          name: dto.name,
          age: dto.age,
          gender: dto.gender,
          email: dto.email,
          phone: dto.phone,
          living: dto.living,
          bio: dto.bio,
          avatar: dto.avatar,
        );
      });

  @override
  Future<void> setAccount(Account account) async {
    _userState.value = _userState.value!.copyWith(account: account);
  }

  @override
  Stream<User?> get watchUser => _userState.stream;

  @override
  Future<void> dispose() async {
    _userState.value = null;
  }

  Future<T> _getData<T>({
    required dynamic options,
    required T Function(dynamic data) builder,
  }) async {
    assert(options is! QueryOptions || options is! MutationOptions,
        'Options must be QueryOptions or MutationOptions');
    try {
      final QueryResult result = options is QueryOptions
          ? await GraphqlClient.client.value.query(options)
          : await GraphqlClient.client.value.mutate(options);
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      log('UserRepositoryError: $error');
      if (error.isEmpty) {
        final data = result.data!;
        return builder(data);
      } else {
        throw ex.UnknownException();
      }
    } on SocketException {
      throw ex.NoInternetException();
    } on Exception {
      throw ex.UnknownException();
    }
  }
}

@Riverpod(keepAlive: true)
UserRepositoryImp userRepository(UserRepositoryRef ref) {
  final userRepository = UserRepositoryImp(userApi: UserApi());
  return userRepository;
}

@Riverpod(keepAlive: true)
Stream<User?> userStateChanges(UserStateChangesRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.userStateChanges();
}
