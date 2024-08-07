import 'dart:developer';
import 'dart:io';

import 'package:cooknow/core/api/post_api.dart';
import 'package:cooknow/core/exceptions/app_exception.dart' as ex;
import 'package:cooknow/core/service/graphql_client.dart';
import 'package:cooknow/core/utils/in_memory_store.dart' as ims;
import 'package:cooknow/features/posts/data/dtos/create_post_dto.dart';
import 'package:cooknow/features/posts/data/repositories/post_repository.dart';
import 'package:cooknow/features/posts/domain/post/post.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository_imp.g.dart';

class PostRepositoryImp implements PostRepository {
  PostRepositoryImp({required this.postApi});
  final PostApi postApi;

  final _listPostState = ims.InMemoryStore<List<Post?>>([]);
  List<Post?> get posts => _listPostState.value;
  Stream<List<Post?>> postStateChanges() => _listPostState.stream;

  @override
  Future<void> createPost(CreatePostDto dto) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<void> fetchPostOfUser(String id) => _getData(
        options: postApi.fetchPostOfUser(id),
        builder: (data) => _listPostState.value =
            data['postsByOwner'].map<Post?>((e) => Post.fromJson(e)).toList(),
      );

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
      log('PostRepositoryError: $error');
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
PostRepositoryImp postRepository(PostRepositoryRef ref) {
  return PostRepositoryImp(postApi: PostApi());
}

@Riverpod(keepAlive: true)
Stream<List<Post?>> postStateChanges(PostStateChangesRef ref) {
  final postRepository = ref.watch(postRepositoryProvider);
  return postRepository.postStateChanges();
}
