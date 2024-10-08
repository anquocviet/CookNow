import 'dart:developer';

import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/graphql/__generated/user.graphql.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/user/data/dtos/update_user_dto.dart';
import 'package:cooknow/features/user/data/repositories/user_repository.dart';
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
  Future<void> followUser(String followId) => _getData(
        query: client.mutate$FollowUser(
          Options$Mutation$FollowUser(
            variables: Variables$Mutation$FollowUser(
              userId: currentUser!.id,
              followerId: followId,
            ),
          ),
        ),
        builder: (data) {
          final result = (data as Mutation$FollowUser).followUser;
          _userState.value = _userState.value?.copyWith(
            following: result.following,
          );
        },
      );

  @override
  Future<void> unFollowUser(String followId) => _getData(
        query: client.mutate$UnFollowUser(
          Options$Mutation$UnFollowUser(
            variables: Variables$Mutation$UnFollowUser(
              userId: currentUser!.id,
              followerId: followId,
            ),
          ),
        ),
        builder: (data) {
          final result = (data as Mutation$UnFollowUser).unFollowUser;
          _userState.value = _userState.value?.copyWith(
            following: result.following,
          );
        },
      );

  Stream<bool> watchUserFollow(String id) async* {
    final Stream<QueryResult<Subscription$UserFollow>> streamResult =
        client.subscribe$UserFollow(
      Options$Subscription$UserFollow(
        variables: Variables$Subscription$UserFollow(userId: id),
      ),
    );
    yield* streamResult.map((event) {
      final result = event.parsedData?.user_follow;
      _userState.value = _userState.value?.copyWith(
        follower: result!.follower,
      );
      return result != null;
    });
  }

  @override
  Stream<User?> get watchUser => _userState.stream;

  @override
  Future<void> updateSavePost(String postId) => _getData(
        query: client.mutate$UpdateSavePost(
          Options$Mutation$UpdateSavePost(
            variables: Variables$Mutation$UpdateSavePost(
              userId: currentUser!.id,
              postId: postId,
            ),
          ),
        ),
        builder: (data) {
          final result = (data as Mutation$UpdateSavePost).updateSavePost;
          _userState.value = _userState.value?.copyWith(
            postsSaved: result.posts_saved,
          );
        },
      );

  @override
  Future<void> dispose() async {
    _userState.value = null;
    // _userState.close();
  }

  Future<T> _getData<T>({
    required Future<QueryResult<dynamic>> query,
    required T Function(dynamic data) builder,
  }) async {
    final result = await query;
    if (!result.hasException) {
      final data = result.parsedData;
      return builder(data);
    }
    log(result.exception.toString(), name: 'UserRepositoryImp');
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

@riverpod
Stream<void> watchUserFollow(WatchUserFollowRef ref) async* {
  final userRepository = ref.watch(userRepositoryProvider);
  final Stream<bool> watchUserFollow =
      userRepository.watchUserFollow(userRepository.currentUser!.id);
  watchUserFollow.first.then((value) {
    if (value) {
      ref.read(notificationProvider.notifier).haveNotification();
    }
  });
  yield* watchUserFollow;
}
