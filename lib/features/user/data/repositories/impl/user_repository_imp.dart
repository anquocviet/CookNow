import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/exceptions/app_exception.dart' as ex;
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/graphql/__generated/user.graphql.dart';
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
  UserRepositoryImp({required this.client});
  final GraphQLClient client;

  final _userState = ims.InMemoryStore<User?>(null);
  User? get currentUser => _userState.value;
  Stream<User?> userStateChanges() => _userState.stream;
  User? get currentAccount => _userState.value;

  @override
  Future<User> fetchUser(String id) => _getData(
        query: client.query$User(
          Options$Query$User(
            variables: Variables$Query$User(
              id: id,
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) => User.fromJson((data as Query$User).user.toJson()),
      );

  @override
  Future<void> fetchUserWhenLogin(String id) => _getData(
        query: client.query$User(
          Options$Query$User(
              variables: Variables$Query$User(
                id: id,
              ),
              fetchPolicy: FetchPolicy.noCache),
        ),
        builder: (data) {
          User user = User.fromJson((data as Query$User).user.toJson());
          _userState.value = user;
        },
      );

  @override
  Future<void> updateUser(UpdateUserDto dto) => _getData(
      query: client.mutate$UpdateUser(
        Options$Mutation$UpdateUser(
          variables: Variables$Mutation$UpdateUser(
            data: Input$UpdateUserDto.fromJson(
              dto.toJson(),
            ),
          ),
        ),
      ),
      builder: (data) {
        final result = (data as Mutation$UpdateUser).updateUser;
        _userState.value = _userState.value?.copyWith(
          name: result.name,
          age: result.age.toInt(),
          gender: result.gender.toInt(),
          email: result.email,
          phone: result.phone,
          living: result.living,
          bio: result.bio,
          avatar: result.avatar,
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
    _userState.close();
  }

  Future<T> _getData<T>({
    required Future<QueryResult<dynamic>> query,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final result = await query;
      final String error =
          result.exception?.graphqlErrors.firstOrNull?.message ?? '';
      log(error, name: 'UserRepositoryImp');
      if (error.isEmpty) {
        final data = result.parsedData;
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
  final userRepository = UserRepositoryImp(client: GraphqlClient.client.value);
  return userRepository;
}

@Riverpod(keepAlive: true)
Stream<User?> userStateChanges(UserStateChangesRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.userStateChanges();
}
