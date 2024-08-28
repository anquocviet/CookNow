import 'dart:developer';

import 'package:cooknow/core/constant/exception_from_server.dart';
import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/graphql/__generated/post.graphql.dart';
import 'package:cooknow/core/graphql/__generated/schema.graphql.dart';
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_emoji_dto.dart';
import 'package:cooknow/features/posts/data/dtos/update_post_dto.dart';
import 'package:cooknow/features/posts/data/repositories/post_repository.dart';
import 'package:cooknow/features/posts/domain/emoji/emoji.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:cooknow/features/posts/domain/step/step.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository_imp.g.dart';

class PostRepositoryImp implements PostRepository {
  PostRepositoryImp({required this.client});

  final GraphQLClient client;

  final _listPostState = ims.InMemoryStore<List<Post?>>([]);
  List<Post?> get posts => _listPostState.value;
  Stream<List<Post?>> postStateChanges() => _listPostState.stream;

  @override
  Future<void> createPost(CreatePostDto dto) => _getData(
      query: client.mutate$CreatePost(
        Options$Mutation$CreatePost(
          variables: Variables$Mutation$CreatePost(
            data: Input$CreatePostDto.fromJson(
              dto.toJson(),
            ),
          ),
        ),
      ),
      builder: (data) {
        final result = (data as Mutation$CreatePost).createPost;
        _listPostState.value = [
          ..._listPostState.value,
          Post.fromJson(result.toJson())
        ];
      });

  @override
  Future<void> fetchPost(String id) => _getData(
        query: client.query$Post(Options$Query$Post(
          variables: Variables$Query$Post(
            id: id,
          ),
          fetchPolicy: FetchPolicy.noCache,
        )),
        builder: (data) {
          final result = (data as Query$Post).post;
          if (_listPostState.value.any((e) => e?.id == result.id)) {
            _listPostState.value = _listPostState.value.map((e) {
              if (e?.id == result.id) {
                return Post.fromJson(result.toJson());
              }
              return e;
            }).toList();
          } else {
            _listPostState.value = [
              ..._listPostState.value,
              Post.fromJson(result.toJson())
            ];
          }
        },
      );

  @override
  Future<void> fetchPostForUser(String id, double take, double skip) =>
      _getData(
        query: client.query$PostForUser(
          Options$Query$PostForUser(
            variables: Variables$Query$PostForUser(
              data: Input$GetPostDto(take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Query$PostForUser).postForUser;
          _listPostState.value = [
            ..._listPostState.value,
            ...result.map((e) => Post.fromJson(e.toJson())),
          ];
        },
      );

  @override
  Future<void> fetchPostOfUserFollowing(String id, double take, double skip) =>
      _getData(
        query: client.query$PostsOfUserFollowing(
          Options$Query$PostsOfUserFollowing(
            variables: Variables$Query$PostsOfUserFollowing(
              data: Input$GetPostDto(id: id, take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result =
              (data as Query$PostsOfUserFollowing).postsOfUserFollowing;
          _listPostState.value = [
            ..._listPostState.value,
            ...result.map((e) => Post.fromJson(e.toJson())),
          ];
        },
      );

  @override
  Future<List<Post>> getPostOfUser(String id, double take, double skip) =>
      _getData(
          query: client.query$PostsByOwner(
            Options$Query$PostsByOwner(
              variables: Variables$Query$PostsByOwner(
                data: Input$GetPostDto(id: id, take: take, skip: skip),
              ),
              fetchPolicy: FetchPolicy.noCache,
            ),
          ),
          builder: (data) {
            final result = (data as Query$PostsByOwner).postsByOwner;
            return result.map((e) => Post.fromJson(e.toJson())).toList();
          });

  @override
  Future<List<Post>> getPostOfUserSaved(String id, double take, double skip) =>
      _getData(
        query: client.query$PostOfUserSaved(
          Options$Query$PostOfUserSaved(
            variables: Variables$Query$PostOfUserSaved(
              data: Input$GetPostDto(id: id, take: take, skip: skip),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Query$PostOfUserSaved).postOfUserSaved;
          return result.map((e) => Post.fromJson(e.toJson())).toList();
        },
      );

  @override
  Future<void> updateEmojiOfPost(UpdateEmojiDto dto) => _getData(
        query: client.mutate$UpdateEmojiOfPost(
          Options$Mutation$UpdateEmojiOfPost(
            variables: Variables$Mutation$UpdateEmojiOfPost(
              data: Input$UpdateEmojiDto.fromJson(
                dto.toJson(),
              ),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Mutation$UpdateEmojiOfPost).updateEmojiOfPost;
          _listPostState.value = _listPostState.value.map((e) {
            if (e?.id == result.id) {
              final listEmoji =
                  result.emojis.map((e) => Emoji.fromJson(e.toJson())).toList();
              return e?.copyWith(emojis: listEmoji);
            }
            return e;
          }).toList();
        },
      );

  @override
  Future<void> updatePost(UpdatePostDto dto) => _getData(
        query: client.mutate$UpdatePost(
          Options$Mutation$UpdatePost(
            variables: Variables$Mutation$UpdatePost(
              data: Input$UpdatePostDto.fromJson(
                dto.toJson(),
              ),
            ),
            fetchPolicy: FetchPolicy.noCache,
          ),
        ),
        builder: (data) {
          final result = (data as Mutation$UpdatePost).updatePost;
          _listPostState.value = _listPostState.value.map((e) {
            if (e?.id == result.id) {
              return e!.copyWith(
                name: result.name,
                image: result.image,
                nopEat: result.nop_eat.toInt(),
                category: result.category,
                prepareTime: result.prepare_time,
                ingredients: result.ingredients,
                steps:
                    result.steps.map((e) => Step.fromJson(e.toJson())).toList(),
              );
            }
            return e;
          }).toList();
        },
      );

  @override
  Future<void> removePost(String postId) => _getData(
      query: client.mutate$DeletePost(
        Options$Mutation$DeletePost(
          variables: Variables$Mutation$DeletePost(
            id: postId,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      ),
      builder: (data) {
        final result = (data as Mutation$DeletePost).deletePost;
        _listPostState.value =
            _listPostState.value.where((e) => e?.id != result.id).toList();
      });

  Stream<void> watchRemovePost(String postId) async* {
    final streamResult = client.subscribe$DeletePost(
      Options$Subscription$DeletePost(
        variables: Variables$Subscription$DeletePost(
          postId: postId,
        ),
      ),
    );
    yield* streamResult.map((event) {
      final result = event.parsedData?.delete_post;
      _listPostState.value =
          _listPostState.value.where((e) => e?.id != result?.id).toList();
    });
  }

  void updateQtyOfPost(String id) {
    _listPostState.value = _listPostState.value.map((post) {
      if (post?.id == id) {
        return post!.copyWith(qtyComments: post.qtyComments + 1);
      }
      return post;
    }).toList();
  }

  @override
  void clearPost() {
    _listPostState.value = [];
  }

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
      log(result.exception.toString(), name: 'PostRepositoryImp');
      if (result.exception?.graphqlErrors.isNotEmpty ?? true) {
        final error = result.exception!.graphqlErrors.first.message;
        if (error == AuthExceptionFromServer.jwtExpired) {
          throw TokenExpiredException();
        } else if (error == AuthExceptionFromServer.postNotFound) {
          throw PostNotFoundException();
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
PostRepositoryImp postRepository(PostRepositoryRef ref) {
  return PostRepositoryImp(client: GraphqlClient.client.value);
}

@Riverpod(keepAlive: true)
Stream<List<Post?>> postStateChanges(PostStateChangesRef ref) {
  final postRepository = ref.watch(postRepositoryProvider);
  return postRepository.postStateChanges();
}

@riverpod
Stream<Post?> currentPostStateChanges(
    CurrentPostStateChangesRef ref, String id) {
  final postRepository = ref.watch(postRepositoryProvider);
  return postRepository
      .postStateChanges()
      .map((event) => event.where((post) => post?.id == id).toList().first);
}

@riverpod
Stream<void> watchRemovePost(WatchRemovePostRef ref, String postId) async* {
  final postRepository = ref.watch(postRepositoryProvider);
  yield* postRepository.watchRemovePost(postId);
}
