// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$CreatePost {
  factory Variables$Mutation$CreatePost({required Input$CreatePostDto data}) =>
      Variables$Mutation$CreatePost._({
        r'data': data,
      });

  Variables$Mutation$CreatePost._(this._$data);

  factory Variables$Mutation$CreatePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CreatePostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreatePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePostDto get data => (_$data['data'] as Input$CreatePostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePost<Variables$Mutation$CreatePost>
      get copyWith => CopyWith$Variables$Mutation$CreatePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreatePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePost<TRes> {
  factory CopyWith$Variables$Mutation$CreatePost(
    Variables$Mutation$CreatePost instance,
    TRes Function(Variables$Mutation$CreatePost) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePost;

  factory CopyWith$Variables$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePost;

  TRes call({Input$CreatePostDto? data});
}

class _CopyWithImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePost _instance;

  final TRes Function(Variables$Mutation$CreatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreatePost._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CreatePostDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePost(this._res);

  TRes _res;

  call({Input$CreatePostDto? data}) => _res;
}

class Mutation$CreatePost {
  Mutation$CreatePost({
    required this.createPost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePost.fromJson(Map<String, dynamic> json) {
    final l$createPost = json['createPost'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost(
      createPost: Mutation$CreatePost$createPost.fromJson(
          (l$createPost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePost$createPost createPost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPost = createPost;
    _resultData['createPost'] = l$createPost.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPost = createPost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPost = createPost;
    final lOther$createPost = other.createPost;
    if (l$createPost != lOther$createPost) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreatePost on Mutation$CreatePost {
  CopyWith$Mutation$CreatePost<Mutation$CreatePost> get copyWith =>
      CopyWith$Mutation$CreatePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePost<TRes> {
  factory CopyWith$Mutation$CreatePost(
    Mutation$CreatePost instance,
    TRes Function(Mutation$CreatePost) then,
  ) = _CopyWithImpl$Mutation$CreatePost;

  factory CopyWith$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost;

  TRes call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost;
}

class _CopyWithImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost _instance;

  final TRes Function(Mutation$CreatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost(
        createPost: createPost == _undefined || createPost == null
            ? _instance.createPost
            : (createPost as Mutation$CreatePost$createPost),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost {
    final local$createPost = _instance.createPost;
    return CopyWith$Mutation$CreatePost$createPost(
        local$createPost, (e) => call(createPost: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost(this._res);

  TRes _res;

  call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost =>
      CopyWith$Mutation$CreatePost$createPost.stub(_res);
}

const documentNodeMutationCreatePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreatePost _parserFn$Mutation$CreatePost(Map<String, dynamic> data) =>
    Mutation$CreatePost.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreatePost?,
);

class Options$Mutation$CreatePost
    extends graphql.MutationOptions<Mutation$CreatePost> {
  Options$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePost,
          parserFn: _parserFn$Mutation$CreatePost,
        );

  final OnMutationCompleted$Mutation$CreatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePost
    extends graphql.WatchQueryOptions<Mutation$CreatePost> {
  WatchOptions$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePost? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreatePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePost,
        );
}

extension ClientExtension$Mutation$CreatePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePost>> mutate$CreatePost(
          Options$Mutation$CreatePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePost> watchMutation$CreatePost(
          WatchOptions$Mutation$CreatePost options) =>
      this.watchMutation(options);
}

class Mutation$CreatePost$HookResult {
  Mutation$CreatePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreatePost runMutation;

  final graphql.QueryResult<Mutation$CreatePost> result;
}

Mutation$CreatePost$HookResult useMutation$CreatePost(
    [WidgetOptions$Mutation$CreatePost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreatePost());
  return Mutation$CreatePost$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePost> useWatchMutation$CreatePost(
        WatchOptions$Mutation$CreatePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePost
    extends graphql.MutationOptions<Mutation$CreatePost> {
  WidgetOptions$Mutation$CreatePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePost,
          parserFn: _parserFn$Mutation$CreatePost,
        );

  final OnMutationCompleted$Mutation$CreatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreatePost
    = graphql.MultiSourceResult<Mutation$CreatePost> Function(
  Variables$Mutation$CreatePost, {
  Object? optimisticResult,
  Mutation$CreatePost? typedOptimisticResult,
});
typedef Builder$Mutation$CreatePost = widgets.Widget Function(
  RunMutation$Mutation$CreatePost,
  graphql.QueryResult<Mutation$CreatePost>?,
);

class Mutation$CreatePost$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePost> {
  Mutation$CreatePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePost? options,
    required Builder$Mutation$CreatePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreatePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreatePost$createPost {
  Mutation$CreatePost$createPost({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.delete_at,
    required this.category,
    required this.ingredients,
    required this.owner,
    required this.steps,
    required this.emojis,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Mutation$CreatePost$createPost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$delete_at = json['delete_at'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$owner = json['owner'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      delete_at: (l$delete_at as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      owner: Mutation$CreatePost$createPost$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      steps: (l$steps as List<dynamic>)
          .map((e) => Mutation$CreatePost$createPost$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) => Mutation$CreatePost$createPost$emojis.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final String delete_at;

  final String category;

  final List<String> ingredients;

  final Mutation$CreatePost$createPost$owner owner;

  final List<Mutation$CreatePost$createPost$steps> steps;

  final List<Mutation$CreatePost$createPost$emojis> emojis;

  final double qty_comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$delete_at = delete_at;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$owner = owner;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$qty_comments = qty_comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$delete_at,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$owner,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$qty_comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost$createPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreatePost$createPost
    on Mutation$CreatePost$createPost {
  CopyWith$Mutation$CreatePost$createPost<Mutation$CreatePost$createPost>
      get copyWith => CopyWith$Mutation$CreatePost$createPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost(
    Mutation$CreatePost$createPost instance,
    TRes Function(Mutation$CreatePost$createPost) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost;

  factory CopyWith$Mutation$CreatePost$createPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Mutation$CreatePost$createPost$owner? owner,
    List<Mutation$CreatePost$createPost$steps>? steps,
    List<Mutation$CreatePost$createPost$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePost$createPost$owner<TRes> get owner;
  TRes steps(
      Iterable<Mutation$CreatePost$createPost$steps> Function(
              Iterable<
                  CopyWith$Mutation$CreatePost$createPost$steps<
                      Mutation$CreatePost$createPost$steps>>)
          _fn);
  TRes emojis(
      Iterable<Mutation$CreatePost$createPost$emojis> Function(
              Iterable<
                  CopyWith$Mutation$CreatePost$createPost$emojis<
                      Mutation$CreatePost$createPost$emojis>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost _instance;

  final TRes Function(Mutation$CreatePost$createPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? delete_at = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? owner = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Mutation$CreatePost$createPost$owner),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Mutation$CreatePost$createPost$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Mutation$CreatePost$createPost$emojis>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePost$createPost$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Mutation$CreatePost$createPost$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Mutation$CreatePost$createPost$steps> Function(
                  Iterable<
                      CopyWith$Mutation$CreatePost$createPost$steps<
                          Mutation$CreatePost$createPost$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps
              .map((e) => CopyWith$Mutation$CreatePost$createPost$steps(
                    e,
                    (i) => i,
                  ))).toList());

  TRes emojis(
          Iterable<Mutation$CreatePost$createPost$emojis> Function(
                  Iterable<
                      CopyWith$Mutation$CreatePost$createPost$emojis<
                          Mutation$CreatePost$createPost$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis
              .map((e) => CopyWith$Mutation$CreatePost$createPost$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Mutation$CreatePost$createPost$owner? owner,
    List<Mutation$CreatePost$createPost$steps>? steps,
    List<Mutation$CreatePost$createPost$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePost$createPost$owner<TRes> get owner =>
      CopyWith$Mutation$CreatePost$createPost$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Mutation$CreatePost$createPost$owner {
  Mutation$CreatePost$createPost$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Mutation$CreatePost$createPost$owner.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost$createPost$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreatePost$createPost$owner
    on Mutation$CreatePost$createPost$owner {
  CopyWith$Mutation$CreatePost$createPost$owner<
          Mutation$CreatePost$createPost$owner>
      get copyWith => CopyWith$Mutation$CreatePost$createPost$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost$owner<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost$owner(
    Mutation$CreatePost$createPost$owner instance,
    TRes Function(Mutation$CreatePost$createPost$owner) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost$owner;

  factory CopyWith$Mutation$CreatePost$createPost$owner.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePost$createPost$owner<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$owner<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost$owner(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost$owner _instance;

  final TRes Function(Mutation$CreatePost$createPost$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost$owner<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$owner<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreatePost$createPost$steps {
  Mutation$CreatePost$createPost$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Mutation$CreatePost$createPost$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost$createPost$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreatePost$createPost$steps
    on Mutation$CreatePost$createPost$steps {
  CopyWith$Mutation$CreatePost$createPost$steps<
          Mutation$CreatePost$createPost$steps>
      get copyWith => CopyWith$Mutation$CreatePost$createPost$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost$steps<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost$steps(
    Mutation$CreatePost$createPost$steps instance,
    TRes Function(Mutation$CreatePost$createPost$steps) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost$steps;

  factory CopyWith$Mutation$CreatePost$createPost$steps.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePost$createPost$steps<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$steps<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost$steps(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost$steps _instance;

  final TRes Function(Mutation$CreatePost$createPost$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost$steps<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$steps<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreatePost$createPost$emojis {
  Mutation$CreatePost$createPost$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Mutation$CreatePost$createPost$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost$createPost$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreatePost$createPost$emojis
    on Mutation$CreatePost$createPost$emojis {
  CopyWith$Mutation$CreatePost$createPost$emojis<
          Mutation$CreatePost$createPost$emojis>
      get copyWith => CopyWith$Mutation$CreatePost$createPost$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost$emojis<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost$emojis(
    Mutation$CreatePost$createPost$emojis instance,
    TRes Function(Mutation$CreatePost$createPost$emojis) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost$emojis;

  factory CopyWith$Mutation$CreatePost$createPost$emojis.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePost$createPost$emojis<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$emojis<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost$emojis(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost$emojis _instance;

  final TRes Function(Mutation$CreatePost$createPost$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost$emojis<TRes>
    implements CopyWith$Mutation$CreatePost$createPost$emojis<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Post {
  factory Variables$Query$Post({required String id}) => Variables$Query$Post._({
        r'id': id,
      });

  Variables$Query$Post._(this._$data);

  factory Variables$Query$Post.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Post._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Post<Variables$Query$Post> get copyWith =>
      CopyWith$Variables$Query$Post(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Post) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Post<TRes> {
  factory CopyWith$Variables$Query$Post(
    Variables$Query$Post instance,
    TRes Function(Variables$Query$Post) then,
  ) = _CopyWithImpl$Variables$Query$Post;

  factory CopyWith$Variables$Query$Post.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Post;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Post<TRes>
    implements CopyWith$Variables$Query$Post<TRes> {
  _CopyWithImpl$Variables$Query$Post(
    this._instance,
    this._then,
  );

  final Variables$Query$Post _instance;

  final TRes Function(Variables$Query$Post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Post._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Post<TRes>
    implements CopyWith$Variables$Query$Post<TRes> {
  _CopyWithStubImpl$Variables$Query$Post(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Post {
  Query$Post({
    required this.post,
    this.$__typename = 'Query',
  });

  factory Query$Post.fromJson(Map<String, dynamic> json) {
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Query$Post(
      post: Query$Post$post.fromJson((l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Post$post post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$post = post;
    _resultData['post'] = l$post.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$post,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Post) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Post on Query$Post {
  CopyWith$Query$Post<Query$Post> get copyWith => CopyWith$Query$Post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Post<TRes> {
  factory CopyWith$Query$Post(
    Query$Post instance,
    TRes Function(Query$Post) then,
  ) = _CopyWithImpl$Query$Post;

  factory CopyWith$Query$Post.stub(TRes res) = _CopyWithStubImpl$Query$Post;

  TRes call({
    Query$Post$post? post,
    String? $__typename,
  });
  CopyWith$Query$Post$post<TRes> get post;
}

class _CopyWithImpl$Query$Post<TRes> implements CopyWith$Query$Post<TRes> {
  _CopyWithImpl$Query$Post(
    this._instance,
    this._then,
  );

  final Query$Post _instance;

  final TRes Function(Query$Post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? post = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Post(
        post: post == _undefined || post == null
            ? _instance.post
            : (post as Query$Post$post),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Post$post<TRes> get post {
    final local$post = _instance.post;
    return CopyWith$Query$Post$post(local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Query$Post<TRes> implements CopyWith$Query$Post<TRes> {
  _CopyWithStubImpl$Query$Post(this._res);

  TRes _res;

  call({
    Query$Post$post? post,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Post$post<TRes> get post =>
      CopyWith$Query$Post$post.stub(_res);
}

const documentNodeQueryPost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Post'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'post'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Post _parserFn$Query$Post(Map<String, dynamic> data) =>
    Query$Post.fromJson(data);
typedef OnQueryComplete$Query$Post = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Post?,
);

class Options$Query$Post extends graphql.QueryOptions<Query$Post> {
  Options$Query$Post({
    String? operationName,
    required Variables$Query$Post variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Post? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Post? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Post(data),
                  ),
          onError: onError,
          document: documentNodeQueryPost,
          parserFn: _parserFn$Query$Post,
        );

  final OnQueryComplete$Query$Post? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Post extends graphql.WatchQueryOptions<Query$Post> {
  WatchOptions$Query$Post({
    String? operationName,
    required Variables$Query$Post variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Post? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Post,
        );
}

class FetchMoreOptions$Query$Post extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Post({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Post variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPost,
        );
}

extension ClientExtension$Query$Post on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Post>> query$Post(
          Options$Query$Post options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Post> watchQuery$Post(
          WatchOptions$Query$Post options) =>
      this.watchQuery(options);
  void writeQuery$Post({
    required Query$Post data,
    required Variables$Query$Post variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPost),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Post? readQuery$Post({
    required Variables$Query$Post variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPost),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Post.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Post> useQuery$Post(
        Options$Query$Post options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Post> useWatchQuery$Post(
        WatchOptions$Query$Post options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Post$Widget extends graphql_flutter.Query<Query$Post> {
  Query$Post$Widget({
    widgets.Key? key,
    required Options$Query$Post options,
    required graphql_flutter.QueryBuilder<Query$Post> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Post$post {
  Query$Post$post({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.owner,
    required this.category,
    required this.ingredients,
    required this.qty_comments,
    required this.steps,
    required this.emojis,
    this.$__typename = 'Post',
  });

  factory Query$Post$post.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$owner = json['owner'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$qty_comments = json['qty_comments'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$$__typename = json['__typename'];
    return Query$Post$post(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      owner: Query$Post$post$owner.fromJson((l$owner as Map<String, dynamic>)),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      steps: (l$steps as List<dynamic>)
          .map((e) =>
              Query$Post$post$steps.fromJson((e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) =>
              Query$Post$post$emojis.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final Query$Post$post$owner owner;

  final String category;

  final List<String> ingredients;

  final double qty_comments;

  final List<Query$Post$post$steps> steps;

  final List<Query$Post$post$emojis> emojis;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$owner = owner;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$qty_comments = qty_comments;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$owner,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$qty_comments,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Post$post) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Post$post on Query$Post$post {
  CopyWith$Query$Post$post<Query$Post$post> get copyWith =>
      CopyWith$Query$Post$post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Post$post<TRes> {
  factory CopyWith$Query$Post$post(
    Query$Post$post instance,
    TRes Function(Query$Post$post) then,
  ) = _CopyWithImpl$Query$Post$post;

  factory CopyWith$Query$Post$post.stub(TRes res) =
      _CopyWithStubImpl$Query$Post$post;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    Query$Post$post$owner? owner,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    List<Query$Post$post$steps>? steps,
    List<Query$Post$post$emojis>? emojis,
    String? $__typename,
  });
  CopyWith$Query$Post$post$owner<TRes> get owner;
  TRes steps(
      Iterable<Query$Post$post$steps> Function(
              Iterable<CopyWith$Query$Post$post$steps<Query$Post$post$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$Post$post$emojis> Function(
              Iterable<CopyWith$Query$Post$post$emojis<Query$Post$post$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$Post$post<TRes>
    implements CopyWith$Query$Post$post<TRes> {
  _CopyWithImpl$Query$Post$post(
    this._instance,
    this._then,
  );

  final Query$Post$post _instance;

  final TRes Function(Query$Post$post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? owner = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? qty_comments = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Post$post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$Post$post$owner),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Query$Post$post$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Query$Post$post$emojis>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Post$post$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$Post$post$owner(local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$Post$post$steps> Function(
                  Iterable<
                      CopyWith$Query$Post$post$steps<Query$Post$post$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps.map((e) => CopyWith$Query$Post$post$steps(
                e,
                (i) => i,
              ))).toList());

  TRes emojis(
          Iterable<Query$Post$post$emojis> Function(
                  Iterable<
                      CopyWith$Query$Post$post$emojis<Query$Post$post$emojis>>)
              _fn) =>
      call(
          emojis:
              _fn(_instance.emojis.map((e) => CopyWith$Query$Post$post$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Post$post<TRes>
    implements CopyWith$Query$Post$post<TRes> {
  _CopyWithStubImpl$Query$Post$post(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    Query$Post$post$owner? owner,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    List<Query$Post$post$steps>? steps,
    List<Query$Post$post$emojis>? emojis,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Post$post$owner<TRes> get owner =>
      CopyWith$Query$Post$post$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$Post$post$owner {
  Query$Post$post$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$Post$post$owner.fromJson(Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Post$post$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Post$post$owner) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Post$post$owner on Query$Post$post$owner {
  CopyWith$Query$Post$post$owner<Query$Post$post$owner> get copyWith =>
      CopyWith$Query$Post$post$owner(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Post$post$owner<TRes> {
  factory CopyWith$Query$Post$post$owner(
    Query$Post$post$owner instance,
    TRes Function(Query$Post$post$owner) then,
  ) = _CopyWithImpl$Query$Post$post$owner;

  factory CopyWith$Query$Post$post$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$Post$post$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Post$post$owner<TRes>
    implements CopyWith$Query$Post$post$owner<TRes> {
  _CopyWithImpl$Query$Post$post$owner(
    this._instance,
    this._then,
  );

  final Query$Post$post$owner _instance;

  final TRes Function(Query$Post$post$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Post$post$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Post$post$owner<TRes>
    implements CopyWith$Query$Post$post$owner<TRes> {
  _CopyWithStubImpl$Query$Post$post$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$Post$post$steps {
  Query$Post$post$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$Post$post$steps.fromJson(Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$Post$post$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Post$post$steps) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Post$post$steps on Query$Post$post$steps {
  CopyWith$Query$Post$post$steps<Query$Post$post$steps> get copyWith =>
      CopyWith$Query$Post$post$steps(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Post$post$steps<TRes> {
  factory CopyWith$Query$Post$post$steps(
    Query$Post$post$steps instance,
    TRes Function(Query$Post$post$steps) then,
  ) = _CopyWithImpl$Query$Post$post$steps;

  factory CopyWith$Query$Post$post$steps.stub(TRes res) =
      _CopyWithStubImpl$Query$Post$post$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Post$post$steps<TRes>
    implements CopyWith$Query$Post$post$steps<TRes> {
  _CopyWithImpl$Query$Post$post$steps(
    this._instance,
    this._then,
  );

  final Query$Post$post$steps _instance;

  final TRes Function(Query$Post$post$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Post$post$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Post$post$steps<TRes>
    implements CopyWith$Query$Post$post$steps<TRes> {
  _CopyWithStubImpl$Query$Post$post$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$Post$post$emojis {
  Query$Post$post$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$Post$post$emojis.fromJson(Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$Post$post$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Post$post$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Post$post$emojis on Query$Post$post$emojis {
  CopyWith$Query$Post$post$emojis<Query$Post$post$emojis> get copyWith =>
      CopyWith$Query$Post$post$emojis(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Post$post$emojis<TRes> {
  factory CopyWith$Query$Post$post$emojis(
    Query$Post$post$emojis instance,
    TRes Function(Query$Post$post$emojis) then,
  ) = _CopyWithImpl$Query$Post$post$emojis;

  factory CopyWith$Query$Post$post$emojis.stub(TRes res) =
      _CopyWithStubImpl$Query$Post$post$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Post$post$emojis<TRes>
    implements CopyWith$Query$Post$post$emojis<TRes> {
  _CopyWithImpl$Query$Post$post$emojis(
    this._instance,
    this._then,
  );

  final Query$Post$post$emojis _instance;

  final TRes Function(Query$Post$post$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Post$post$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Post$post$emojis<TRes>
    implements CopyWith$Query$Post$post$emojis<TRes> {
  _CopyWithStubImpl$Query$Post$post$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PostForUser {
  factory Variables$Query$PostForUser({required Input$GetPostDto data}) =>
      Variables$Query$PostForUser._({
        r'data': data,
      });

  Variables$Query$PostForUser._(this._$data);

  factory Variables$Query$PostForUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$PostForUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$PostForUser<Variables$Query$PostForUser>
      get copyWith => CopyWith$Variables$Query$PostForUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PostForUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Query$PostForUser<TRes> {
  factory CopyWith$Variables$Query$PostForUser(
    Variables$Query$PostForUser instance,
    TRes Function(Variables$Query$PostForUser) then,
  ) = _CopyWithImpl$Variables$Query$PostForUser;

  factory CopyWith$Variables$Query$PostForUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostForUser;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$PostForUser<TRes>
    implements CopyWith$Variables$Query$PostForUser<TRes> {
  _CopyWithImpl$Variables$Query$PostForUser(
    this._instance,
    this._then,
  );

  final Variables$Query$PostForUser _instance;

  final TRes Function(Variables$Query$PostForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Query$PostForUser._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostForUser<TRes>
    implements CopyWith$Variables$Query$PostForUser<TRes> {
  _CopyWithStubImpl$Variables$Query$PostForUser(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$PostForUser {
  Query$PostForUser({
    required this.postForUser,
    this.$__typename = 'Query',
  });

  factory Query$PostForUser.fromJson(Map<String, dynamic> json) {
    final l$postForUser = json['postForUser'];
    final l$$__typename = json['__typename'];
    return Query$PostForUser(
      postForUser: (l$postForUser as List<dynamic>)
          .map((e) => Query$PostForUser$postForUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PostForUser$postForUser> postForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postForUser = postForUser;
    _resultData['postForUser'] = l$postForUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postForUser = postForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$postForUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostForUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postForUser = postForUser;
    final lOther$postForUser = other.postForUser;
    if (l$postForUser.length != lOther$postForUser.length) {
      return false;
    }
    for (int i = 0; i < l$postForUser.length; i++) {
      final l$postForUser$entry = l$postForUser[i];
      final lOther$postForUser$entry = lOther$postForUser[i];
      if (l$postForUser$entry != lOther$postForUser$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostForUser on Query$PostForUser {
  CopyWith$Query$PostForUser<Query$PostForUser> get copyWith =>
      CopyWith$Query$PostForUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PostForUser<TRes> {
  factory CopyWith$Query$PostForUser(
    Query$PostForUser instance,
    TRes Function(Query$PostForUser) then,
  ) = _CopyWithImpl$Query$PostForUser;

  factory CopyWith$Query$PostForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$PostForUser;

  TRes call({
    List<Query$PostForUser$postForUser>? postForUser,
    String? $__typename,
  });
  TRes postForUser(
      Iterable<Query$PostForUser$postForUser> Function(
              Iterable<
                  CopyWith$Query$PostForUser$postForUser<
                      Query$PostForUser$postForUser>>)
          _fn);
}

class _CopyWithImpl$Query$PostForUser<TRes>
    implements CopyWith$Query$PostForUser<TRes> {
  _CopyWithImpl$Query$PostForUser(
    this._instance,
    this._then,
  );

  final Query$PostForUser _instance;

  final TRes Function(Query$PostForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostForUser(
        postForUser: postForUser == _undefined || postForUser == null
            ? _instance.postForUser
            : (postForUser as List<Query$PostForUser$postForUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes postForUser(
          Iterable<Query$PostForUser$postForUser> Function(
                  Iterable<
                      CopyWith$Query$PostForUser$postForUser<
                          Query$PostForUser$postForUser>>)
              _fn) =>
      call(
          postForUser: _fn(_instance.postForUser
              .map((e) => CopyWith$Query$PostForUser$postForUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostForUser<TRes>
    implements CopyWith$Query$PostForUser<TRes> {
  _CopyWithStubImpl$Query$PostForUser(this._res);

  TRes _res;

  call({
    List<Query$PostForUser$postForUser>? postForUser,
    String? $__typename,
  }) =>
      _res;

  postForUser(_fn) => _res;
}

const documentNodeQueryPostForUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PostForUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetPostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'postForUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$PostForUser _parserFn$Query$PostForUser(Map<String, dynamic> data) =>
    Query$PostForUser.fromJson(data);
typedef OnQueryComplete$Query$PostForUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PostForUser?,
);

class Options$Query$PostForUser
    extends graphql.QueryOptions<Query$PostForUser> {
  Options$Query$PostForUser({
    String? operationName,
    required Variables$Query$PostForUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostForUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PostForUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$PostForUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryPostForUser,
          parserFn: _parserFn$Query$PostForUser,
        );

  final OnQueryComplete$Query$PostForUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PostForUser
    extends graphql.WatchQueryOptions<Query$PostForUser> {
  WatchOptions$Query$PostForUser({
    String? operationName,
    required Variables$Query$PostForUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostForUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPostForUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PostForUser,
        );
}

class FetchMoreOptions$Query$PostForUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PostForUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PostForUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPostForUser,
        );
}

extension ClientExtension$Query$PostForUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PostForUser>> query$PostForUser(
          Options$Query$PostForUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$PostForUser> watchQuery$PostForUser(
          WatchOptions$Query$PostForUser options) =>
      this.watchQuery(options);
  void writeQuery$PostForUser({
    required Query$PostForUser data,
    required Variables$Query$PostForUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPostForUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PostForUser? readQuery$PostForUser({
    required Variables$Query$PostForUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPostForUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PostForUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PostForUser> useQuery$PostForUser(
        Options$Query$PostForUser options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PostForUser> useWatchQuery$PostForUser(
        WatchOptions$Query$PostForUser options) =>
    graphql_flutter.useWatchQuery(options);

class Query$PostForUser$Widget
    extends graphql_flutter.Query<Query$PostForUser> {
  Query$PostForUser$Widget({
    widgets.Key? key,
    required Options$Query$PostForUser options,
    required graphql_flutter.QueryBuilder<Query$PostForUser> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PostForUser$postForUser {
  Query$PostForUser$postForUser({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.owner,
    required this.category,
    required this.ingredients,
    required this.qty_comments,
    required this.steps,
    required this.emojis,
    this.$__typename = 'Post',
  });

  factory Query$PostForUser$postForUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$owner = json['owner'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$qty_comments = json['qty_comments'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$$__typename = json['__typename'];
    return Query$PostForUser$postForUser(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      owner: Query$PostForUser$postForUser$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      steps: (l$steps as List<dynamic>)
          .map((e) => Query$PostForUser$postForUser$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) => Query$PostForUser$postForUser$emojis.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final Query$PostForUser$postForUser$owner owner;

  final String category;

  final List<String> ingredients;

  final double qty_comments;

  final List<Query$PostForUser$postForUser$steps> steps;

  final List<Query$PostForUser$postForUser$emojis> emojis;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$owner = owner;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$qty_comments = qty_comments;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$owner,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$qty_comments,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostForUser$postForUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostForUser$postForUser
    on Query$PostForUser$postForUser {
  CopyWith$Query$PostForUser$postForUser<Query$PostForUser$postForUser>
      get copyWith => CopyWith$Query$PostForUser$postForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostForUser$postForUser<TRes> {
  factory CopyWith$Query$PostForUser$postForUser(
    Query$PostForUser$postForUser instance,
    TRes Function(Query$PostForUser$postForUser) then,
  ) = _CopyWithImpl$Query$PostForUser$postForUser;

  factory CopyWith$Query$PostForUser$postForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$PostForUser$postForUser;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    Query$PostForUser$postForUser$owner? owner,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    List<Query$PostForUser$postForUser$steps>? steps,
    List<Query$PostForUser$postForUser$emojis>? emojis,
    String? $__typename,
  });
  CopyWith$Query$PostForUser$postForUser$owner<TRes> get owner;
  TRes steps(
      Iterable<Query$PostForUser$postForUser$steps> Function(
              Iterable<
                  CopyWith$Query$PostForUser$postForUser$steps<
                      Query$PostForUser$postForUser$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$PostForUser$postForUser$emojis> Function(
              Iterable<
                  CopyWith$Query$PostForUser$postForUser$emojis<
                      Query$PostForUser$postForUser$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$PostForUser$postForUser<TRes>
    implements CopyWith$Query$PostForUser$postForUser<TRes> {
  _CopyWithImpl$Query$PostForUser$postForUser(
    this._instance,
    this._then,
  );

  final Query$PostForUser$postForUser _instance;

  final TRes Function(Query$PostForUser$postForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? owner = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? qty_comments = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostForUser$postForUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$PostForUser$postForUser$owner),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Query$PostForUser$postForUser$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Query$PostForUser$postForUser$emojis>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PostForUser$postForUser$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$PostForUser$postForUser$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$PostForUser$postForUser$steps> Function(
                  Iterable<
                      CopyWith$Query$PostForUser$postForUser$steps<
                          Query$PostForUser$postForUser$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps
              .map((e) => CopyWith$Query$PostForUser$postForUser$steps(
                    e,
                    (i) => i,
                  ))).toList());

  TRes emojis(
          Iterable<Query$PostForUser$postForUser$emojis> Function(
                  Iterable<
                      CopyWith$Query$PostForUser$postForUser$emojis<
                          Query$PostForUser$postForUser$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis
              .map((e) => CopyWith$Query$PostForUser$postForUser$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostForUser$postForUser<TRes>
    implements CopyWith$Query$PostForUser$postForUser<TRes> {
  _CopyWithStubImpl$Query$PostForUser$postForUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    Query$PostForUser$postForUser$owner? owner,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    List<Query$PostForUser$postForUser$steps>? steps,
    List<Query$PostForUser$postForUser$emojis>? emojis,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PostForUser$postForUser$owner<TRes> get owner =>
      CopyWith$Query$PostForUser$postForUser$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$PostForUser$postForUser$owner {
  Query$PostForUser$postForUser$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$PostForUser$postForUser$owner.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$PostForUser$postForUser$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostForUser$postForUser$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostForUser$postForUser$owner
    on Query$PostForUser$postForUser$owner {
  CopyWith$Query$PostForUser$postForUser$owner<
          Query$PostForUser$postForUser$owner>
      get copyWith => CopyWith$Query$PostForUser$postForUser$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostForUser$postForUser$owner<TRes> {
  factory CopyWith$Query$PostForUser$postForUser$owner(
    Query$PostForUser$postForUser$owner instance,
    TRes Function(Query$PostForUser$postForUser$owner) then,
  ) = _CopyWithImpl$Query$PostForUser$postForUser$owner;

  factory CopyWith$Query$PostForUser$postForUser$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$PostForUser$postForUser$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostForUser$postForUser$owner<TRes>
    implements CopyWith$Query$PostForUser$postForUser$owner<TRes> {
  _CopyWithImpl$Query$PostForUser$postForUser$owner(
    this._instance,
    this._then,
  );

  final Query$PostForUser$postForUser$owner _instance;

  final TRes Function(Query$PostForUser$postForUser$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostForUser$postForUser$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostForUser$postForUser$owner<TRes>
    implements CopyWith$Query$PostForUser$postForUser$owner<TRes> {
  _CopyWithStubImpl$Query$PostForUser$postForUser$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostForUser$postForUser$steps {
  Query$PostForUser$postForUser$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$PostForUser$postForUser$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$PostForUser$postForUser$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostForUser$postForUser$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostForUser$postForUser$steps
    on Query$PostForUser$postForUser$steps {
  CopyWith$Query$PostForUser$postForUser$steps<
          Query$PostForUser$postForUser$steps>
      get copyWith => CopyWith$Query$PostForUser$postForUser$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostForUser$postForUser$steps<TRes> {
  factory CopyWith$Query$PostForUser$postForUser$steps(
    Query$PostForUser$postForUser$steps instance,
    TRes Function(Query$PostForUser$postForUser$steps) then,
  ) = _CopyWithImpl$Query$PostForUser$postForUser$steps;

  factory CopyWith$Query$PostForUser$postForUser$steps.stub(TRes res) =
      _CopyWithStubImpl$Query$PostForUser$postForUser$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostForUser$postForUser$steps<TRes>
    implements CopyWith$Query$PostForUser$postForUser$steps<TRes> {
  _CopyWithImpl$Query$PostForUser$postForUser$steps(
    this._instance,
    this._then,
  );

  final Query$PostForUser$postForUser$steps _instance;

  final TRes Function(Query$PostForUser$postForUser$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostForUser$postForUser$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostForUser$postForUser$steps<TRes>
    implements CopyWith$Query$PostForUser$postForUser$steps<TRes> {
  _CopyWithStubImpl$Query$PostForUser$postForUser$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostForUser$postForUser$emojis {
  Query$PostForUser$postForUser$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$PostForUser$postForUser$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$PostForUser$postForUser$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostForUser$postForUser$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostForUser$postForUser$emojis
    on Query$PostForUser$postForUser$emojis {
  CopyWith$Query$PostForUser$postForUser$emojis<
          Query$PostForUser$postForUser$emojis>
      get copyWith => CopyWith$Query$PostForUser$postForUser$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostForUser$postForUser$emojis<TRes> {
  factory CopyWith$Query$PostForUser$postForUser$emojis(
    Query$PostForUser$postForUser$emojis instance,
    TRes Function(Query$PostForUser$postForUser$emojis) then,
  ) = _CopyWithImpl$Query$PostForUser$postForUser$emojis;

  factory CopyWith$Query$PostForUser$postForUser$emojis.stub(TRes res) =
      _CopyWithStubImpl$Query$PostForUser$postForUser$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostForUser$postForUser$emojis<TRes>
    implements CopyWith$Query$PostForUser$postForUser$emojis<TRes> {
  _CopyWithImpl$Query$PostForUser$postForUser$emojis(
    this._instance,
    this._then,
  );

  final Query$PostForUser$postForUser$emojis _instance;

  final TRes Function(Query$PostForUser$postForUser$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostForUser$postForUser$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostForUser$postForUser$emojis<TRes>
    implements CopyWith$Query$PostForUser$postForUser$emojis<TRes> {
  _CopyWithStubImpl$Query$PostForUser$postForUser$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PostsOfUserFollowing {
  factory Variables$Query$PostsOfUserFollowing(
          {required Input$GetPostDto data}) =>
      Variables$Query$PostsOfUserFollowing._({
        r'data': data,
      });

  Variables$Query$PostsOfUserFollowing._(this._$data);

  factory Variables$Query$PostsOfUserFollowing.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$PostsOfUserFollowing._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$PostsOfUserFollowing<
          Variables$Query$PostsOfUserFollowing>
      get copyWith => CopyWith$Variables$Query$PostsOfUserFollowing(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PostsOfUserFollowing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Query$PostsOfUserFollowing<TRes> {
  factory CopyWith$Variables$Query$PostsOfUserFollowing(
    Variables$Query$PostsOfUserFollowing instance,
    TRes Function(Variables$Query$PostsOfUserFollowing) then,
  ) = _CopyWithImpl$Variables$Query$PostsOfUserFollowing;

  factory CopyWith$Variables$Query$PostsOfUserFollowing.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostsOfUserFollowing;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$PostsOfUserFollowing<TRes>
    implements CopyWith$Variables$Query$PostsOfUserFollowing<TRes> {
  _CopyWithImpl$Variables$Query$PostsOfUserFollowing(
    this._instance,
    this._then,
  );

  final Variables$Query$PostsOfUserFollowing _instance;

  final TRes Function(Variables$Query$PostsOfUserFollowing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Query$PostsOfUserFollowing._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostsOfUserFollowing<TRes>
    implements CopyWith$Variables$Query$PostsOfUserFollowing<TRes> {
  _CopyWithStubImpl$Variables$Query$PostsOfUserFollowing(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$PostsOfUserFollowing {
  Query$PostsOfUserFollowing({
    required this.postsOfUserFollowing,
    this.$__typename = 'Query',
  });

  factory Query$PostsOfUserFollowing.fromJson(Map<String, dynamic> json) {
    final l$postsOfUserFollowing = json['postsOfUserFollowing'];
    final l$$__typename = json['__typename'];
    return Query$PostsOfUserFollowing(
      postsOfUserFollowing: (l$postsOfUserFollowing as List<dynamic>)
          .map((e) => Query$PostsOfUserFollowing$postsOfUserFollowing.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PostsOfUserFollowing$postsOfUserFollowing>
      postsOfUserFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postsOfUserFollowing = postsOfUserFollowing;
    _resultData['postsOfUserFollowing'] =
        l$postsOfUserFollowing.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postsOfUserFollowing = postsOfUserFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$postsOfUserFollowing.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsOfUserFollowing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postsOfUserFollowing = postsOfUserFollowing;
    final lOther$postsOfUserFollowing = other.postsOfUserFollowing;
    if (l$postsOfUserFollowing.length != lOther$postsOfUserFollowing.length) {
      return false;
    }
    for (int i = 0; i < l$postsOfUserFollowing.length; i++) {
      final l$postsOfUserFollowing$entry = l$postsOfUserFollowing[i];
      final lOther$postsOfUserFollowing$entry = lOther$postsOfUserFollowing[i];
      if (l$postsOfUserFollowing$entry != lOther$postsOfUserFollowing$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsOfUserFollowing
    on Query$PostsOfUserFollowing {
  CopyWith$Query$PostsOfUserFollowing<Query$PostsOfUserFollowing>
      get copyWith => CopyWith$Query$PostsOfUserFollowing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsOfUserFollowing<TRes> {
  factory CopyWith$Query$PostsOfUserFollowing(
    Query$PostsOfUserFollowing instance,
    TRes Function(Query$PostsOfUserFollowing) then,
  ) = _CopyWithImpl$Query$PostsOfUserFollowing;

  factory CopyWith$Query$PostsOfUserFollowing.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsOfUserFollowing;

  TRes call({
    List<Query$PostsOfUserFollowing$postsOfUserFollowing>? postsOfUserFollowing,
    String? $__typename,
  });
  TRes postsOfUserFollowing(
      Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing> Function(
              Iterable<
                  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<
                      Query$PostsOfUserFollowing$postsOfUserFollowing>>)
          _fn);
}

class _CopyWithImpl$Query$PostsOfUserFollowing<TRes>
    implements CopyWith$Query$PostsOfUserFollowing<TRes> {
  _CopyWithImpl$Query$PostsOfUserFollowing(
    this._instance,
    this._then,
  );

  final Query$PostsOfUserFollowing _instance;

  final TRes Function(Query$PostsOfUserFollowing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postsOfUserFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsOfUserFollowing(
        postsOfUserFollowing:
            postsOfUserFollowing == _undefined || postsOfUserFollowing == null
                ? _instance.postsOfUserFollowing
                : (postsOfUserFollowing
                    as List<Query$PostsOfUserFollowing$postsOfUserFollowing>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes postsOfUserFollowing(
          Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing> Function(
                  Iterable<
                      CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<
                          Query$PostsOfUserFollowing$postsOfUserFollowing>>)
              _fn) =>
      call(
          postsOfUserFollowing: _fn(_instance.postsOfUserFollowing.map(
              (e) => CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostsOfUserFollowing<TRes>
    implements CopyWith$Query$PostsOfUserFollowing<TRes> {
  _CopyWithStubImpl$Query$PostsOfUserFollowing(this._res);

  TRes _res;

  call({
    List<Query$PostsOfUserFollowing$postsOfUserFollowing>? postsOfUserFollowing,
    String? $__typename,
  }) =>
      _res;

  postsOfUserFollowing(_fn) => _res;
}

const documentNodeQueryPostsOfUserFollowing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PostsOfUserFollowing'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetPostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'postsOfUserFollowing'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$PostsOfUserFollowing _parserFn$Query$PostsOfUserFollowing(
        Map<String, dynamic> data) =>
    Query$PostsOfUserFollowing.fromJson(data);
typedef OnQueryComplete$Query$PostsOfUserFollowing = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PostsOfUserFollowing?,
);

class Options$Query$PostsOfUserFollowing
    extends graphql.QueryOptions<Query$PostsOfUserFollowing> {
  Options$Query$PostsOfUserFollowing({
    String? operationName,
    required Variables$Query$PostsOfUserFollowing variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostsOfUserFollowing? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PostsOfUserFollowing? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$PostsOfUserFollowing(data),
                  ),
          onError: onError,
          document: documentNodeQueryPostsOfUserFollowing,
          parserFn: _parserFn$Query$PostsOfUserFollowing,
        );

  final OnQueryComplete$Query$PostsOfUserFollowing? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PostsOfUserFollowing
    extends graphql.WatchQueryOptions<Query$PostsOfUserFollowing> {
  WatchOptions$Query$PostsOfUserFollowing({
    String? operationName,
    required Variables$Query$PostsOfUserFollowing variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostsOfUserFollowing? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPostsOfUserFollowing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PostsOfUserFollowing,
        );
}

class FetchMoreOptions$Query$PostsOfUserFollowing
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PostsOfUserFollowing({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PostsOfUserFollowing variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPostsOfUserFollowing,
        );
}

extension ClientExtension$Query$PostsOfUserFollowing on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PostsOfUserFollowing>>
      query$PostsOfUserFollowing(
              Options$Query$PostsOfUserFollowing options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$PostsOfUserFollowing>
      watchQuery$PostsOfUserFollowing(
              WatchOptions$Query$PostsOfUserFollowing options) =>
          this.watchQuery(options);
  void writeQuery$PostsOfUserFollowing({
    required Query$PostsOfUserFollowing data,
    required Variables$Query$PostsOfUserFollowing variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPostsOfUserFollowing),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PostsOfUserFollowing? readQuery$PostsOfUserFollowing({
    required Variables$Query$PostsOfUserFollowing variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPostsOfUserFollowing),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PostsOfUserFollowing.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PostsOfUserFollowing>
    useQuery$PostsOfUserFollowing(Options$Query$PostsOfUserFollowing options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PostsOfUserFollowing>
    useWatchQuery$PostsOfUserFollowing(
            WatchOptions$Query$PostsOfUserFollowing options) =>
        graphql_flutter.useWatchQuery(options);

class Query$PostsOfUserFollowing$Widget
    extends graphql_flutter.Query<Query$PostsOfUserFollowing> {
  Query$PostsOfUserFollowing$Widget({
    widgets.Key? key,
    required Options$Query$PostsOfUserFollowing options,
    required graphql_flutter.QueryBuilder<Query$PostsOfUserFollowing> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PostsOfUserFollowing$postsOfUserFollowing {
  Query$PostsOfUserFollowing$postsOfUserFollowing({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.delete_at,
    required this.category,
    required this.ingredients,
    required this.owner,
    required this.steps,
    required this.emojis,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Query$PostsOfUserFollowing$postsOfUserFollowing.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$delete_at = json['delete_at'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$owner = json['owner'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Query$PostsOfUserFollowing$postsOfUserFollowing(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      delete_at: (l$delete_at as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      owner: Query$PostsOfUserFollowing$postsOfUserFollowing$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      steps: (l$steps as List<dynamic>)
          .map((e) =>
              Query$PostsOfUserFollowing$postsOfUserFollowing$steps.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) =>
              Query$PostsOfUserFollowing$postsOfUserFollowing$emojis.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final String delete_at;

  final String category;

  final List<String> ingredients;

  final Query$PostsOfUserFollowing$postsOfUserFollowing$owner owner;

  final List<Query$PostsOfUserFollowing$postsOfUserFollowing$steps> steps;

  final List<Query$PostsOfUserFollowing$postsOfUserFollowing$emojis> emojis;

  final double qty_comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$delete_at = delete_at;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$owner = owner;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$qty_comments = qty_comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$delete_at,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$owner,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$qty_comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsOfUserFollowing$postsOfUserFollowing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsOfUserFollowing$postsOfUserFollowing
    on Query$PostsOfUserFollowing$postsOfUserFollowing {
  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<
          Query$PostsOfUserFollowing$postsOfUserFollowing>
      get copyWith => CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<TRes> {
  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing(
    Query$PostsOfUserFollowing$postsOfUserFollowing instance,
    TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing) then,
  ) = _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing;

  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostsOfUserFollowing$postsOfUserFollowing$owner? owner,
    List<Query$PostsOfUserFollowing$postsOfUserFollowing$steps>? steps,
    List<Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  });
  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes>
      get owner;
  TRes steps(
      Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing$steps> Function(
              Iterable<
                  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<
                      Query$PostsOfUserFollowing$postsOfUserFollowing$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing$emojis> Function(
              Iterable<
                  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<
                      Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing<TRes>
    implements CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<TRes> {
  _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing(
    this._instance,
    this._then,
  );

  final Query$PostsOfUserFollowing$postsOfUserFollowing _instance;

  final TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? delete_at = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? owner = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsOfUserFollowing$postsOfUserFollowing(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$PostsOfUserFollowing$postsOfUserFollowing$owner),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps
                as List<Query$PostsOfUserFollowing$postsOfUserFollowing$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<
                Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes>
      get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing$steps> Function(
                  Iterable<
                      CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<
                          Query$PostsOfUserFollowing$postsOfUserFollowing$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps.map((e) =>
              CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
                e,
                (i) => i,
              ))).toList());

  TRes emojis(
          Iterable<Query$PostsOfUserFollowing$postsOfUserFollowing$emojis> Function(
                  Iterable<
                      CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<
                          Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis.map((e) =>
              CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing<TRes>
    implements CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing<TRes> {
  _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostsOfUserFollowing$postsOfUserFollowing$owner? owner,
    List<Query$PostsOfUserFollowing$postsOfUserFollowing$steps>? steps,
    List<Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes>
      get owner =>
          CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner.stub(
              _res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$PostsOfUserFollowing$postsOfUserFollowing$owner {
  Query$PostsOfUserFollowing$postsOfUserFollowing$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$PostsOfUserFollowing$postsOfUserFollowing$owner.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsOfUserFollowing$postsOfUserFollowing$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsOfUserFollowing$postsOfUserFollowing$owner
    on Query$PostsOfUserFollowing$postsOfUserFollowing$owner {
  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<
          Query$PostsOfUserFollowing$postsOfUserFollowing$owner>
      get copyWith =>
          CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<
    TRes> {
  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
    Query$PostsOfUserFollowing$postsOfUserFollowing$owner instance,
    TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$owner) then,
  ) = _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner;

  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes> {
  _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
    this._instance,
    this._then,
  );

  final Query$PostsOfUserFollowing$postsOfUserFollowing$owner _instance;

  final TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$owner)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<
        TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$owner<TRes> {
  _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$owner(
      this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostsOfUserFollowing$postsOfUserFollowing$steps {
  Query$PostsOfUserFollowing$postsOfUserFollowing$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$PostsOfUserFollowing$postsOfUserFollowing$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsOfUserFollowing$postsOfUserFollowing$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsOfUserFollowing$postsOfUserFollowing$steps
    on Query$PostsOfUserFollowing$postsOfUserFollowing$steps {
  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<
          Query$PostsOfUserFollowing$postsOfUserFollowing$steps>
      get copyWith =>
          CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<
    TRes> {
  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
    Query$PostsOfUserFollowing$postsOfUserFollowing$steps instance,
    TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$steps) then,
  ) = _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps;

  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<TRes> {
  _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
    this._instance,
    this._then,
  );

  final Query$PostsOfUserFollowing$postsOfUserFollowing$steps _instance;

  final TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$steps)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<
        TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$steps<TRes> {
  _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$steps(
      this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostsOfUserFollowing$postsOfUserFollowing$emojis {
  Query$PostsOfUserFollowing$postsOfUserFollowing$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$PostsOfUserFollowing$postsOfUserFollowing$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsOfUserFollowing$postsOfUserFollowing$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis
    on Query$PostsOfUserFollowing$postsOfUserFollowing$emojis {
  CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<
          Query$PostsOfUserFollowing$postsOfUserFollowing$emojis>
      get copyWith =>
          CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<
    TRes> {
  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
    Query$PostsOfUserFollowing$postsOfUserFollowing$emojis instance,
    TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$emojis) then,
  ) = _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis;

  factory CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<TRes> {
  _CopyWithImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
    this._instance,
    this._then,
  );

  final Query$PostsOfUserFollowing$postsOfUserFollowing$emojis _instance;

  final TRes Function(Query$PostsOfUserFollowing$postsOfUserFollowing$emojis)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<
        TRes>
    implements
        CopyWith$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis<TRes> {
  _CopyWithStubImpl$Query$PostsOfUserFollowing$postsOfUserFollowing$emojis(
      this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PostsByOwner {
  factory Variables$Query$PostsByOwner({required Input$GetPostDto data}) =>
      Variables$Query$PostsByOwner._({
        r'data': data,
      });

  Variables$Query$PostsByOwner._(this._$data);

  factory Variables$Query$PostsByOwner.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$PostsByOwner._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$PostsByOwner<Variables$Query$PostsByOwner>
      get copyWith => CopyWith$Variables$Query$PostsByOwner(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PostsByOwner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Query$PostsByOwner<TRes> {
  factory CopyWith$Variables$Query$PostsByOwner(
    Variables$Query$PostsByOwner instance,
    TRes Function(Variables$Query$PostsByOwner) then,
  ) = _CopyWithImpl$Variables$Query$PostsByOwner;

  factory CopyWith$Variables$Query$PostsByOwner.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostsByOwner;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$PostsByOwner<TRes>
    implements CopyWith$Variables$Query$PostsByOwner<TRes> {
  _CopyWithImpl$Variables$Query$PostsByOwner(
    this._instance,
    this._then,
  );

  final Variables$Query$PostsByOwner _instance;

  final TRes Function(Variables$Query$PostsByOwner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Query$PostsByOwner._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostsByOwner<TRes>
    implements CopyWith$Variables$Query$PostsByOwner<TRes> {
  _CopyWithStubImpl$Variables$Query$PostsByOwner(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$PostsByOwner {
  Query$PostsByOwner({
    required this.postsByOwner,
    this.$__typename = 'Query',
  });

  factory Query$PostsByOwner.fromJson(Map<String, dynamic> json) {
    final l$postsByOwner = json['postsByOwner'];
    final l$$__typename = json['__typename'];
    return Query$PostsByOwner(
      postsByOwner: (l$postsByOwner as List<dynamic>)
          .map((e) => Query$PostsByOwner$postsByOwner.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PostsByOwner$postsByOwner> postsByOwner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postsByOwner = postsByOwner;
    _resultData['postsByOwner'] =
        l$postsByOwner.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postsByOwner = postsByOwner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$postsByOwner.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsByOwner) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postsByOwner = postsByOwner;
    final lOther$postsByOwner = other.postsByOwner;
    if (l$postsByOwner.length != lOther$postsByOwner.length) {
      return false;
    }
    for (int i = 0; i < l$postsByOwner.length; i++) {
      final l$postsByOwner$entry = l$postsByOwner[i];
      final lOther$postsByOwner$entry = lOther$postsByOwner[i];
      if (l$postsByOwner$entry != lOther$postsByOwner$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsByOwner on Query$PostsByOwner {
  CopyWith$Query$PostsByOwner<Query$PostsByOwner> get copyWith =>
      CopyWith$Query$PostsByOwner(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PostsByOwner<TRes> {
  factory CopyWith$Query$PostsByOwner(
    Query$PostsByOwner instance,
    TRes Function(Query$PostsByOwner) then,
  ) = _CopyWithImpl$Query$PostsByOwner;

  factory CopyWith$Query$PostsByOwner.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsByOwner;

  TRes call({
    List<Query$PostsByOwner$postsByOwner>? postsByOwner,
    String? $__typename,
  });
  TRes postsByOwner(
      Iterable<Query$PostsByOwner$postsByOwner> Function(
              Iterable<
                  CopyWith$Query$PostsByOwner$postsByOwner<
                      Query$PostsByOwner$postsByOwner>>)
          _fn);
}

class _CopyWithImpl$Query$PostsByOwner<TRes>
    implements CopyWith$Query$PostsByOwner<TRes> {
  _CopyWithImpl$Query$PostsByOwner(
    this._instance,
    this._then,
  );

  final Query$PostsByOwner _instance;

  final TRes Function(Query$PostsByOwner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postsByOwner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsByOwner(
        postsByOwner: postsByOwner == _undefined || postsByOwner == null
            ? _instance.postsByOwner
            : (postsByOwner as List<Query$PostsByOwner$postsByOwner>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes postsByOwner(
          Iterable<Query$PostsByOwner$postsByOwner> Function(
                  Iterable<
                      CopyWith$Query$PostsByOwner$postsByOwner<
                          Query$PostsByOwner$postsByOwner>>)
              _fn) =>
      call(
          postsByOwner: _fn(_instance.postsByOwner
              .map((e) => CopyWith$Query$PostsByOwner$postsByOwner(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostsByOwner<TRes>
    implements CopyWith$Query$PostsByOwner<TRes> {
  _CopyWithStubImpl$Query$PostsByOwner(this._res);

  TRes _res;

  call({
    List<Query$PostsByOwner$postsByOwner>? postsByOwner,
    String? $__typename,
  }) =>
      _res;

  postsByOwner(_fn) => _res;
}

const documentNodeQueryPostsByOwner = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PostsByOwner'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetPostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'postsByOwner'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$PostsByOwner _parserFn$Query$PostsByOwner(Map<String, dynamic> data) =>
    Query$PostsByOwner.fromJson(data);
typedef OnQueryComplete$Query$PostsByOwner = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PostsByOwner?,
);

class Options$Query$PostsByOwner
    extends graphql.QueryOptions<Query$PostsByOwner> {
  Options$Query$PostsByOwner({
    String? operationName,
    required Variables$Query$PostsByOwner variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostsByOwner? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PostsByOwner? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$PostsByOwner(data),
                  ),
          onError: onError,
          document: documentNodeQueryPostsByOwner,
          parserFn: _parserFn$Query$PostsByOwner,
        );

  final OnQueryComplete$Query$PostsByOwner? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PostsByOwner
    extends graphql.WatchQueryOptions<Query$PostsByOwner> {
  WatchOptions$Query$PostsByOwner({
    String? operationName,
    required Variables$Query$PostsByOwner variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostsByOwner? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPostsByOwner,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PostsByOwner,
        );
}

class FetchMoreOptions$Query$PostsByOwner extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PostsByOwner({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PostsByOwner variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPostsByOwner,
        );
}

extension ClientExtension$Query$PostsByOwner on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PostsByOwner>> query$PostsByOwner(
          Options$Query$PostsByOwner options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$PostsByOwner> watchQuery$PostsByOwner(
          WatchOptions$Query$PostsByOwner options) =>
      this.watchQuery(options);
  void writeQuery$PostsByOwner({
    required Query$PostsByOwner data,
    required Variables$Query$PostsByOwner variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPostsByOwner),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PostsByOwner? readQuery$PostsByOwner({
    required Variables$Query$PostsByOwner variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPostsByOwner),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PostsByOwner.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PostsByOwner> useQuery$PostsByOwner(
        Options$Query$PostsByOwner options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PostsByOwner> useWatchQuery$PostsByOwner(
        WatchOptions$Query$PostsByOwner options) =>
    graphql_flutter.useWatchQuery(options);

class Query$PostsByOwner$Widget
    extends graphql_flutter.Query<Query$PostsByOwner> {
  Query$PostsByOwner$Widget({
    widgets.Key? key,
    required Options$Query$PostsByOwner options,
    required graphql_flutter.QueryBuilder<Query$PostsByOwner> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PostsByOwner$postsByOwner {
  Query$PostsByOwner$postsByOwner({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.delete_at,
    required this.category,
    required this.ingredients,
    required this.owner,
    required this.steps,
    required this.emojis,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Query$PostsByOwner$postsByOwner.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$delete_at = json['delete_at'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$owner = json['owner'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Query$PostsByOwner$postsByOwner(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      delete_at: (l$delete_at as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      owner: Query$PostsByOwner$postsByOwner$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      steps: (l$steps as List<dynamic>)
          .map((e) => Query$PostsByOwner$postsByOwner$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) => Query$PostsByOwner$postsByOwner$emojis.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final String delete_at;

  final String category;

  final List<String> ingredients;

  final Query$PostsByOwner$postsByOwner$owner owner;

  final List<Query$PostsByOwner$postsByOwner$steps> steps;

  final List<Query$PostsByOwner$postsByOwner$emojis> emojis;

  final double qty_comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$delete_at = delete_at;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$owner = owner;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$qty_comments = qty_comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$delete_at,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$owner,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$qty_comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsByOwner$postsByOwner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsByOwner$postsByOwner
    on Query$PostsByOwner$postsByOwner {
  CopyWith$Query$PostsByOwner$postsByOwner<Query$PostsByOwner$postsByOwner>
      get copyWith => CopyWith$Query$PostsByOwner$postsByOwner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsByOwner$postsByOwner<TRes> {
  factory CopyWith$Query$PostsByOwner$postsByOwner(
    Query$PostsByOwner$postsByOwner instance,
    TRes Function(Query$PostsByOwner$postsByOwner) then,
  ) = _CopyWithImpl$Query$PostsByOwner$postsByOwner;

  factory CopyWith$Query$PostsByOwner$postsByOwner.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsByOwner$postsByOwner;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostsByOwner$postsByOwner$owner? owner,
    List<Query$PostsByOwner$postsByOwner$steps>? steps,
    List<Query$PostsByOwner$postsByOwner$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  });
  CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> get owner;
  TRes steps(
      Iterable<Query$PostsByOwner$postsByOwner$steps> Function(
              Iterable<
                  CopyWith$Query$PostsByOwner$postsByOwner$steps<
                      Query$PostsByOwner$postsByOwner$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$PostsByOwner$postsByOwner$emojis> Function(
              Iterable<
                  CopyWith$Query$PostsByOwner$postsByOwner$emojis<
                      Query$PostsByOwner$postsByOwner$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$PostsByOwner$postsByOwner<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner<TRes> {
  _CopyWithImpl$Query$PostsByOwner$postsByOwner(
    this._instance,
    this._then,
  );

  final Query$PostsByOwner$postsByOwner _instance;

  final TRes Function(Query$PostsByOwner$postsByOwner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? delete_at = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? owner = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsByOwner$postsByOwner(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$PostsByOwner$postsByOwner$owner),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Query$PostsByOwner$postsByOwner$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Query$PostsByOwner$postsByOwner$emojis>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$PostsByOwner$postsByOwner$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$PostsByOwner$postsByOwner$steps> Function(
                  Iterable<
                      CopyWith$Query$PostsByOwner$postsByOwner$steps<
                          Query$PostsByOwner$postsByOwner$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps
              .map((e) => CopyWith$Query$PostsByOwner$postsByOwner$steps(
                    e,
                    (i) => i,
                  ))).toList());

  TRes emojis(
          Iterable<Query$PostsByOwner$postsByOwner$emojis> Function(
                  Iterable<
                      CopyWith$Query$PostsByOwner$postsByOwner$emojis<
                          Query$PostsByOwner$postsByOwner$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis
              .map((e) => CopyWith$Query$PostsByOwner$postsByOwner$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostsByOwner$postsByOwner<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner<TRes> {
  _CopyWithStubImpl$Query$PostsByOwner$postsByOwner(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostsByOwner$postsByOwner$owner? owner,
    List<Query$PostsByOwner$postsByOwner$steps>? steps,
    List<Query$PostsByOwner$postsByOwner$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> get owner =>
      CopyWith$Query$PostsByOwner$postsByOwner$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$PostsByOwner$postsByOwner$owner {
  Query$PostsByOwner$postsByOwner$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$PostsByOwner$postsByOwner$owner.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$PostsByOwner$postsByOwner$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsByOwner$postsByOwner$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsByOwner$postsByOwner$owner
    on Query$PostsByOwner$postsByOwner$owner {
  CopyWith$Query$PostsByOwner$postsByOwner$owner<
          Query$PostsByOwner$postsByOwner$owner>
      get copyWith => CopyWith$Query$PostsByOwner$postsByOwner$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> {
  factory CopyWith$Query$PostsByOwner$postsByOwner$owner(
    Query$PostsByOwner$postsByOwner$owner instance,
    TRes Function(Query$PostsByOwner$postsByOwner$owner) then,
  ) = _CopyWithImpl$Query$PostsByOwner$postsByOwner$owner;

  factory CopyWith$Query$PostsByOwner$postsByOwner$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsByOwner$postsByOwner$owner<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> {
  _CopyWithImpl$Query$PostsByOwner$postsByOwner$owner(
    this._instance,
    this._then,
  );

  final Query$PostsByOwner$postsByOwner$owner _instance;

  final TRes Function(Query$PostsByOwner$postsByOwner$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsByOwner$postsByOwner$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$owner<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$owner<TRes> {
  _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostsByOwner$postsByOwner$steps {
  Query$PostsByOwner$postsByOwner$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$PostsByOwner$postsByOwner$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$PostsByOwner$postsByOwner$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsByOwner$postsByOwner$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsByOwner$postsByOwner$steps
    on Query$PostsByOwner$postsByOwner$steps {
  CopyWith$Query$PostsByOwner$postsByOwner$steps<
          Query$PostsByOwner$postsByOwner$steps>
      get copyWith => CopyWith$Query$PostsByOwner$postsByOwner$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsByOwner$postsByOwner$steps<TRes> {
  factory CopyWith$Query$PostsByOwner$postsByOwner$steps(
    Query$PostsByOwner$postsByOwner$steps instance,
    TRes Function(Query$PostsByOwner$postsByOwner$steps) then,
  ) = _CopyWithImpl$Query$PostsByOwner$postsByOwner$steps;

  factory CopyWith$Query$PostsByOwner$postsByOwner$steps.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsByOwner$postsByOwner$steps<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$steps<TRes> {
  _CopyWithImpl$Query$PostsByOwner$postsByOwner$steps(
    this._instance,
    this._then,
  );

  final Query$PostsByOwner$postsByOwner$steps _instance;

  final TRes Function(Query$PostsByOwner$postsByOwner$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsByOwner$postsByOwner$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$steps<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$steps<TRes> {
  _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostsByOwner$postsByOwner$emojis {
  Query$PostsByOwner$postsByOwner$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$PostsByOwner$postsByOwner$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$PostsByOwner$postsByOwner$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostsByOwner$postsByOwner$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostsByOwner$postsByOwner$emojis
    on Query$PostsByOwner$postsByOwner$emojis {
  CopyWith$Query$PostsByOwner$postsByOwner$emojis<
          Query$PostsByOwner$postsByOwner$emojis>
      get copyWith => CopyWith$Query$PostsByOwner$postsByOwner$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostsByOwner$postsByOwner$emojis<TRes> {
  factory CopyWith$Query$PostsByOwner$postsByOwner$emojis(
    Query$PostsByOwner$postsByOwner$emojis instance,
    TRes Function(Query$PostsByOwner$postsByOwner$emojis) then,
  ) = _CopyWithImpl$Query$PostsByOwner$postsByOwner$emojis;

  factory CopyWith$Query$PostsByOwner$postsByOwner$emojis.stub(TRes res) =
      _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostsByOwner$postsByOwner$emojis<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$emojis<TRes> {
  _CopyWithImpl$Query$PostsByOwner$postsByOwner$emojis(
    this._instance,
    this._then,
  );

  final Query$PostsByOwner$postsByOwner$emojis _instance;

  final TRes Function(Query$PostsByOwner$postsByOwner$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostsByOwner$postsByOwner$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$emojis<TRes>
    implements CopyWith$Query$PostsByOwner$postsByOwner$emojis<TRes> {
  _CopyWithStubImpl$Query$PostsByOwner$postsByOwner$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PostOfUserSaved {
  factory Variables$Query$PostOfUserSaved({required Input$GetPostDto data}) =>
      Variables$Query$PostOfUserSaved._({
        r'data': data,
      });

  Variables$Query$PostOfUserSaved._(this._$data);

  factory Variables$Query$PostOfUserSaved.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$PostOfUserSaved._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$PostOfUserSaved<Variables$Query$PostOfUserSaved>
      get copyWith => CopyWith$Variables$Query$PostOfUserSaved(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PostOfUserSaved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Query$PostOfUserSaved<TRes> {
  factory CopyWith$Variables$Query$PostOfUserSaved(
    Variables$Query$PostOfUserSaved instance,
    TRes Function(Variables$Query$PostOfUserSaved) then,
  ) = _CopyWithImpl$Variables$Query$PostOfUserSaved;

  factory CopyWith$Variables$Query$PostOfUserSaved.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostOfUserSaved;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$PostOfUserSaved<TRes>
    implements CopyWith$Variables$Query$PostOfUserSaved<TRes> {
  _CopyWithImpl$Variables$Query$PostOfUserSaved(
    this._instance,
    this._then,
  );

  final Variables$Query$PostOfUserSaved _instance;

  final TRes Function(Variables$Query$PostOfUserSaved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Query$PostOfUserSaved._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostOfUserSaved<TRes>
    implements CopyWith$Variables$Query$PostOfUserSaved<TRes> {
  _CopyWithStubImpl$Variables$Query$PostOfUserSaved(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$PostOfUserSaved {
  Query$PostOfUserSaved({
    required this.postOfUserSaved,
    this.$__typename = 'Query',
  });

  factory Query$PostOfUserSaved.fromJson(Map<String, dynamic> json) {
    final l$postOfUserSaved = json['postOfUserSaved'];
    final l$$__typename = json['__typename'];
    return Query$PostOfUserSaved(
      postOfUserSaved: (l$postOfUserSaved as List<dynamic>)
          .map((e) => Query$PostOfUserSaved$postOfUserSaved.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PostOfUserSaved$postOfUserSaved> postOfUserSaved;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postOfUserSaved = postOfUserSaved;
    _resultData['postOfUserSaved'] =
        l$postOfUserSaved.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postOfUserSaved = postOfUserSaved;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$postOfUserSaved.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostOfUserSaved) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postOfUserSaved = postOfUserSaved;
    final lOther$postOfUserSaved = other.postOfUserSaved;
    if (l$postOfUserSaved.length != lOther$postOfUserSaved.length) {
      return false;
    }
    for (int i = 0; i < l$postOfUserSaved.length; i++) {
      final l$postOfUserSaved$entry = l$postOfUserSaved[i];
      final lOther$postOfUserSaved$entry = lOther$postOfUserSaved[i];
      if (l$postOfUserSaved$entry != lOther$postOfUserSaved$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostOfUserSaved on Query$PostOfUserSaved {
  CopyWith$Query$PostOfUserSaved<Query$PostOfUserSaved> get copyWith =>
      CopyWith$Query$PostOfUserSaved(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PostOfUserSaved<TRes> {
  factory CopyWith$Query$PostOfUserSaved(
    Query$PostOfUserSaved instance,
    TRes Function(Query$PostOfUserSaved) then,
  ) = _CopyWithImpl$Query$PostOfUserSaved;

  factory CopyWith$Query$PostOfUserSaved.stub(TRes res) =
      _CopyWithStubImpl$Query$PostOfUserSaved;

  TRes call({
    List<Query$PostOfUserSaved$postOfUserSaved>? postOfUserSaved,
    String? $__typename,
  });
  TRes postOfUserSaved(
      Iterable<Query$PostOfUserSaved$postOfUserSaved> Function(
              Iterable<
                  CopyWith$Query$PostOfUserSaved$postOfUserSaved<
                      Query$PostOfUserSaved$postOfUserSaved>>)
          _fn);
}

class _CopyWithImpl$Query$PostOfUserSaved<TRes>
    implements CopyWith$Query$PostOfUserSaved<TRes> {
  _CopyWithImpl$Query$PostOfUserSaved(
    this._instance,
    this._then,
  );

  final Query$PostOfUserSaved _instance;

  final TRes Function(Query$PostOfUserSaved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postOfUserSaved = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostOfUserSaved(
        postOfUserSaved: postOfUserSaved == _undefined ||
                postOfUserSaved == null
            ? _instance.postOfUserSaved
            : (postOfUserSaved as List<Query$PostOfUserSaved$postOfUserSaved>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes postOfUserSaved(
          Iterable<Query$PostOfUserSaved$postOfUserSaved> Function(
                  Iterable<
                      CopyWith$Query$PostOfUserSaved$postOfUserSaved<
                          Query$PostOfUserSaved$postOfUserSaved>>)
              _fn) =>
      call(
          postOfUserSaved: _fn(_instance.postOfUserSaved
              .map((e) => CopyWith$Query$PostOfUserSaved$postOfUserSaved(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostOfUserSaved<TRes>
    implements CopyWith$Query$PostOfUserSaved<TRes> {
  _CopyWithStubImpl$Query$PostOfUserSaved(this._res);

  TRes _res;

  call({
    List<Query$PostOfUserSaved$postOfUserSaved>? postOfUserSaved,
    String? $__typename,
  }) =>
      _res;

  postOfUserSaved(_fn) => _res;
}

const documentNodeQueryPostOfUserSaved = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PostOfUserSaved'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetPostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'postOfUserSaved'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$PostOfUserSaved _parserFn$Query$PostOfUserSaved(
        Map<String, dynamic> data) =>
    Query$PostOfUserSaved.fromJson(data);
typedef OnQueryComplete$Query$PostOfUserSaved = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PostOfUserSaved?,
);

class Options$Query$PostOfUserSaved
    extends graphql.QueryOptions<Query$PostOfUserSaved> {
  Options$Query$PostOfUserSaved({
    String? operationName,
    required Variables$Query$PostOfUserSaved variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostOfUserSaved? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PostOfUserSaved? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$PostOfUserSaved(data),
                  ),
          onError: onError,
          document: documentNodeQueryPostOfUserSaved,
          parserFn: _parserFn$Query$PostOfUserSaved,
        );

  final OnQueryComplete$Query$PostOfUserSaved? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PostOfUserSaved
    extends graphql.WatchQueryOptions<Query$PostOfUserSaved> {
  WatchOptions$Query$PostOfUserSaved({
    String? operationName,
    required Variables$Query$PostOfUserSaved variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PostOfUserSaved? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPostOfUserSaved,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PostOfUserSaved,
        );
}

class FetchMoreOptions$Query$PostOfUserSaved extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PostOfUserSaved({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PostOfUserSaved variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPostOfUserSaved,
        );
}

extension ClientExtension$Query$PostOfUserSaved on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PostOfUserSaved>> query$PostOfUserSaved(
          Options$Query$PostOfUserSaved options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$PostOfUserSaved> watchQuery$PostOfUserSaved(
          WatchOptions$Query$PostOfUserSaved options) =>
      this.watchQuery(options);
  void writeQuery$PostOfUserSaved({
    required Query$PostOfUserSaved data,
    required Variables$Query$PostOfUserSaved variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPostOfUserSaved),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PostOfUserSaved? readQuery$PostOfUserSaved({
    required Variables$Query$PostOfUserSaved variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPostOfUserSaved),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PostOfUserSaved.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PostOfUserSaved> useQuery$PostOfUserSaved(
        Options$Query$PostOfUserSaved options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PostOfUserSaved> useWatchQuery$PostOfUserSaved(
        WatchOptions$Query$PostOfUserSaved options) =>
    graphql_flutter.useWatchQuery(options);

class Query$PostOfUserSaved$Widget
    extends graphql_flutter.Query<Query$PostOfUserSaved> {
  Query$PostOfUserSaved$Widget({
    widgets.Key? key,
    required Options$Query$PostOfUserSaved options,
    required graphql_flutter.QueryBuilder<Query$PostOfUserSaved> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PostOfUserSaved$postOfUserSaved {
  Query$PostOfUserSaved$postOfUserSaved({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.delete_at,
    required this.category,
    required this.ingredients,
    required this.owner,
    required this.steps,
    required this.emojis,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Query$PostOfUserSaved$postOfUserSaved.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$delete_at = json['delete_at'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$owner = json['owner'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Query$PostOfUserSaved$postOfUserSaved(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      delete_at: (l$delete_at as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      owner: Query$PostOfUserSaved$postOfUserSaved$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      steps: (l$steps as List<dynamic>)
          .map((e) => Query$PostOfUserSaved$postOfUserSaved$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) => Query$PostOfUserSaved$postOfUserSaved$emojis.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final String delete_at;

  final String category;

  final List<String> ingredients;

  final Query$PostOfUserSaved$postOfUserSaved$owner owner;

  final List<Query$PostOfUserSaved$postOfUserSaved$steps> steps;

  final List<Query$PostOfUserSaved$postOfUserSaved$emojis> emojis;

  final double qty_comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$owner = owner;
    _resultData['owner'] = l$owner.toJson();
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$delete_at = delete_at;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$owner = owner;
    final l$steps = steps;
    final l$emojis = emojis;
    final l$qty_comments = qty_comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$delete_at,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$owner,
      Object.hashAll(l$steps.map((v) => v)),
      Object.hashAll(l$emojis.map((v) => v)),
      l$qty_comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostOfUserSaved$postOfUserSaved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostOfUserSaved$postOfUserSaved
    on Query$PostOfUserSaved$postOfUserSaved {
  CopyWith$Query$PostOfUserSaved$postOfUserSaved<
          Query$PostOfUserSaved$postOfUserSaved>
      get copyWith => CopyWith$Query$PostOfUserSaved$postOfUserSaved(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostOfUserSaved$postOfUserSaved<TRes> {
  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved(
    Query$PostOfUserSaved$postOfUserSaved instance,
    TRes Function(Query$PostOfUserSaved$postOfUserSaved) then,
  ) = _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved;

  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved.stub(TRes res) =
      _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostOfUserSaved$postOfUserSaved$owner? owner,
    List<Query$PostOfUserSaved$postOfUserSaved$steps>? steps,
    List<Query$PostOfUserSaved$postOfUserSaved$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  });
  CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> get owner;
  TRes steps(
      Iterable<Query$PostOfUserSaved$postOfUserSaved$steps> Function(
              Iterable<
                  CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<
                      Query$PostOfUserSaved$postOfUserSaved$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$PostOfUserSaved$postOfUserSaved$emojis> Function(
              Iterable<
                  CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<
                      Query$PostOfUserSaved$postOfUserSaved$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved<TRes> {
  _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved(
    this._instance,
    this._then,
  );

  final Query$PostOfUserSaved$postOfUserSaved _instance;

  final TRes Function(Query$PostOfUserSaved$postOfUserSaved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? delete_at = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? owner = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostOfUserSaved$postOfUserSaved(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$PostOfUserSaved$postOfUserSaved$owner),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Query$PostOfUserSaved$postOfUserSaved$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Query$PostOfUserSaved$postOfUserSaved$emojis>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$PostOfUserSaved$postOfUserSaved$steps> Function(
                  Iterable<
                      CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<
                          Query$PostOfUserSaved$postOfUserSaved$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps
              .map((e) => CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps(
                    e,
                    (i) => i,
                  ))).toList());

  TRes emojis(
          Iterable<Query$PostOfUserSaved$postOfUserSaved$emojis> Function(
                  Iterable<
                      CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<
                          Query$PostOfUserSaved$postOfUserSaved$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis
              .map((e) => CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved<TRes> {
  _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    Query$PostOfUserSaved$postOfUserSaved$owner? owner,
    List<Query$PostOfUserSaved$postOfUserSaved$steps>? steps,
    List<Query$PostOfUserSaved$postOfUserSaved$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> get owner =>
      CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$PostOfUserSaved$postOfUserSaved$owner {
  Query$PostOfUserSaved$postOfUserSaved$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$PostOfUserSaved$postOfUserSaved$owner.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$PostOfUserSaved$postOfUserSaved$owner(
      user_id: (l$user_id as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final String name;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostOfUserSaved$postOfUserSaved$owner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostOfUserSaved$postOfUserSaved$owner
    on Query$PostOfUserSaved$postOfUserSaved$owner {
  CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<
          Query$PostOfUserSaved$postOfUserSaved$owner>
      get copyWith => CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> {
  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner(
    Query$PostOfUserSaved$postOfUserSaved$owner instance,
    TRes Function(Query$PostOfUserSaved$postOfUserSaved$owner) then,
  ) = _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$owner;

  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$owner<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> {
  _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$owner(
    this._instance,
    this._then,
  );

  final Query$PostOfUserSaved$postOfUserSaved$owner _instance;

  final TRes Function(Query$PostOfUserSaved$postOfUserSaved$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostOfUserSaved$postOfUserSaved$owner(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$owner<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$owner<TRes> {
  _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostOfUserSaved$postOfUserSaved$steps {
  Query$PostOfUserSaved$postOfUserSaved$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$PostOfUserSaved$postOfUserSaved$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$PostOfUserSaved$postOfUserSaved$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostOfUserSaved$postOfUserSaved$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostOfUserSaved$postOfUserSaved$steps
    on Query$PostOfUserSaved$postOfUserSaved$steps {
  CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<
          Query$PostOfUserSaved$postOfUserSaved$steps>
      get copyWith => CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<TRes> {
  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps(
    Query$PostOfUserSaved$postOfUserSaved$steps instance,
    TRes Function(Query$PostOfUserSaved$postOfUserSaved$steps) then,
  ) = _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$steps;

  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps.stub(TRes res) =
      _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$steps<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<TRes> {
  _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$steps(
    this._instance,
    this._then,
  );

  final Query$PostOfUserSaved$postOfUserSaved$steps _instance;

  final TRes Function(Query$PostOfUserSaved$postOfUserSaved$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostOfUserSaved$postOfUserSaved$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$steps<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$steps<TRes> {
  _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$PostOfUserSaved$postOfUserSaved$emojis {
  Query$PostOfUserSaved$postOfUserSaved$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$PostOfUserSaved$postOfUserSaved$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$PostOfUserSaved$postOfUserSaved$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PostOfUserSaved$postOfUserSaved$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PostOfUserSaved$postOfUserSaved$emojis
    on Query$PostOfUserSaved$postOfUserSaved$emojis {
  CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<
          Query$PostOfUserSaved$postOfUserSaved$emojis>
      get copyWith => CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<TRes> {
  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis(
    Query$PostOfUserSaved$postOfUserSaved$emojis instance,
    TRes Function(Query$PostOfUserSaved$postOfUserSaved$emojis) then,
  ) = _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$emojis;

  factory CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis.stub(TRes res) =
      _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$emojis<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<TRes> {
  _CopyWithImpl$Query$PostOfUserSaved$postOfUserSaved$emojis(
    this._instance,
    this._then,
  );

  final Query$PostOfUserSaved$postOfUserSaved$emojis _instance;

  final TRes Function(Query$PostOfUserSaved$postOfUserSaved$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PostOfUserSaved$postOfUserSaved$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$emojis<TRes>
    implements CopyWith$Query$PostOfUserSaved$postOfUserSaved$emojis<TRes> {
  _CopyWithStubImpl$Query$PostOfUserSaved$postOfUserSaved$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdatePost {
  factory Variables$Mutation$UpdatePost({required Input$UpdatePostDto data}) =>
      Variables$Mutation$UpdatePost._({
        r'data': data,
      });

  Variables$Mutation$UpdatePost._(this._$data);

  factory Variables$Mutation$UpdatePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UpdatePostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$UpdatePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdatePostDto get data => (_$data['data'] as Input$UpdatePostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePost<Variables$Mutation$UpdatePost>
      get copyWith => CopyWith$Variables$Mutation$UpdatePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdatePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePost<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePost(
    Variables$Mutation$UpdatePost instance,
    TRes Function(Variables$Mutation$UpdatePost) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePost;

  factory CopyWith$Variables$Mutation$UpdatePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePost;

  TRes call({Input$UpdatePostDto? data});
}

class _CopyWithImpl$Variables$Mutation$UpdatePost<TRes>
    implements CopyWith$Variables$Mutation$UpdatePost<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePost _instance;

  final TRes Function(Variables$Mutation$UpdatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$UpdatePost._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UpdatePostDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePost<TRes>
    implements CopyWith$Variables$Mutation$UpdatePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePost(this._res);

  TRes _res;

  call({Input$UpdatePostDto? data}) => _res;
}

class Mutation$UpdatePost {
  Mutation$UpdatePost({
    required this.updatePost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePost.fromJson(Map<String, dynamic> json) {
    final l$updatePost = json['updatePost'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePost(
      updatePost: Mutation$UpdatePost$updatePost.fromJson(
          (l$updatePost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePost$updatePost updatePost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePost = updatePost;
    _resultData['updatePost'] = l$updatePost.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePost = updatePost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePost = updatePost;
    final lOther$updatePost = other.updatePost;
    if (l$updatePost != lOther$updatePost) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePost on Mutation$UpdatePost {
  CopyWith$Mutation$UpdatePost<Mutation$UpdatePost> get copyWith =>
      CopyWith$Mutation$UpdatePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePost<TRes> {
  factory CopyWith$Mutation$UpdatePost(
    Mutation$UpdatePost instance,
    TRes Function(Mutation$UpdatePost) then,
  ) = _CopyWithImpl$Mutation$UpdatePost;

  factory CopyWith$Mutation$UpdatePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePost;

  TRes call({
    Mutation$UpdatePost$updatePost? updatePost,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePost$updatePost<TRes> get updatePost;
}

class _CopyWithImpl$Mutation$UpdatePost<TRes>
    implements CopyWith$Mutation$UpdatePost<TRes> {
  _CopyWithImpl$Mutation$UpdatePost(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePost _instance;

  final TRes Function(Mutation$UpdatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePost(
        updatePost: updatePost == _undefined || updatePost == null
            ? _instance.updatePost
            : (updatePost as Mutation$UpdatePost$updatePost),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdatePost$updatePost<TRes> get updatePost {
    final local$updatePost = _instance.updatePost;
    return CopyWith$Mutation$UpdatePost$updatePost(
        local$updatePost, (e) => call(updatePost: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePost<TRes>
    implements CopyWith$Mutation$UpdatePost<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePost(this._res);

  TRes _res;

  call({
    Mutation$UpdatePost$updatePost? updatePost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdatePost$updatePost<TRes> get updatePost =>
      CopyWith$Mutation$UpdatePost$updatePost.stub(_res);
}

const documentNodeMutationUpdatePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdatePostDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'medias'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdatePost _parserFn$Mutation$UpdatePost(Map<String, dynamic> data) =>
    Mutation$UpdatePost.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdatePost?,
);

class Options$Mutation$UpdatePost
    extends graphql.MutationOptions<Mutation$UpdatePost> {
  Options$Mutation$UpdatePost({
    String? operationName,
    required Variables$Mutation$UpdatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePost,
          parserFn: _parserFn$Mutation$UpdatePost,
        );

  final OnMutationCompleted$Mutation$UpdatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePost
    extends graphql.WatchQueryOptions<Mutation$UpdatePost> {
  WatchOptions$Mutation$UpdatePost({
    String? operationName,
    required Variables$Mutation$UpdatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePost? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdatePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdatePost,
        );
}

extension ClientExtension$Mutation$UpdatePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePost>> mutate$UpdatePost(
          Options$Mutation$UpdatePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePost> watchMutation$UpdatePost(
          WatchOptions$Mutation$UpdatePost options) =>
      this.watchMutation(options);
}

class Mutation$UpdatePost$HookResult {
  Mutation$UpdatePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdatePost runMutation;

  final graphql.QueryResult<Mutation$UpdatePost> result;
}

Mutation$UpdatePost$HookResult useMutation$UpdatePost(
    [WidgetOptions$Mutation$UpdatePost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdatePost());
  return Mutation$UpdatePost$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdatePost> useWatchMutation$UpdatePost(
        WatchOptions$Mutation$UpdatePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdatePost
    extends graphql.MutationOptions<Mutation$UpdatePost> {
  WidgetOptions$Mutation$UpdatePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePost,
          parserFn: _parserFn$Mutation$UpdatePost,
        );

  final OnMutationCompleted$Mutation$UpdatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdatePost
    = graphql.MultiSourceResult<Mutation$UpdatePost> Function(
  Variables$Mutation$UpdatePost, {
  Object? optimisticResult,
  Mutation$UpdatePost? typedOptimisticResult,
});
typedef Builder$Mutation$UpdatePost = widgets.Widget Function(
  RunMutation$Mutation$UpdatePost,
  graphql.QueryResult<Mutation$UpdatePost>?,
);

class Mutation$UpdatePost$Widget
    extends graphql_flutter.Mutation<Mutation$UpdatePost> {
  Mutation$UpdatePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdatePost? options,
    required Builder$Mutation$UpdatePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdatePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdatePost$updatePost {
  Mutation$UpdatePost$updatePost({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.category,
    required this.ingredients,
    required this.steps,
    this.$__typename = 'Post',
  });

  factory Mutation$UpdatePost$updatePost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$steps = json['steps'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePost$updatePost(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      steps: (l$steps as List<dynamic>)
          .map((e) => Mutation$UpdatePost$updatePost$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String category;

  final List<String> ingredients;

  final List<Mutation$UpdatePost$updatePost$steps> steps;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$steps = steps;
    _resultData['steps'] = l$steps.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$steps = steps;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      Object.hashAll(l$steps.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePost$updatePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps.length != lOther$steps.length) {
      return false;
    }
    for (int i = 0; i < l$steps.length; i++) {
      final l$steps$entry = l$steps[i];
      final lOther$steps$entry = lOther$steps[i];
      if (l$steps$entry != lOther$steps$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePost$updatePost
    on Mutation$UpdatePost$updatePost {
  CopyWith$Mutation$UpdatePost$updatePost<Mutation$UpdatePost$updatePost>
      get copyWith => CopyWith$Mutation$UpdatePost$updatePost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePost$updatePost<TRes> {
  factory CopyWith$Mutation$UpdatePost$updatePost(
    Mutation$UpdatePost$updatePost instance,
    TRes Function(Mutation$UpdatePost$updatePost) then,
  ) = _CopyWithImpl$Mutation$UpdatePost$updatePost;

  factory CopyWith$Mutation$UpdatePost$updatePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePost$updatePost;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Mutation$UpdatePost$updatePost$steps>? steps,
    String? $__typename,
  });
  TRes steps(
      Iterable<Mutation$UpdatePost$updatePost$steps> Function(
              Iterable<
                  CopyWith$Mutation$UpdatePost$updatePost$steps<
                      Mutation$UpdatePost$updatePost$steps>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdatePost$updatePost<TRes>
    implements CopyWith$Mutation$UpdatePost$updatePost<TRes> {
  _CopyWithImpl$Mutation$UpdatePost$updatePost(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePost$updatePost _instance;

  final TRes Function(Mutation$UpdatePost$updatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? steps = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePost$updatePost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Mutation$UpdatePost$updatePost$steps>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes steps(
          Iterable<Mutation$UpdatePost$updatePost$steps> Function(
                  Iterable<
                      CopyWith$Mutation$UpdatePost$updatePost$steps<
                          Mutation$UpdatePost$updatePost$steps>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps
              .map((e) => CopyWith$Mutation$UpdatePost$updatePost$steps(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdatePost$updatePost<TRes>
    implements CopyWith$Mutation$UpdatePost$updatePost<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePost$updatePost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Mutation$UpdatePost$updatePost$steps>? steps,
    String? $__typename,
  }) =>
      _res;

  steps(_fn) => _res;
}

class Mutation$UpdatePost$updatePost$steps {
  Mutation$UpdatePost$updatePost$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Mutation$UpdatePost$updatePost$steps.fromJson(
      Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePost$updatePost$steps(
      content: (l$content as String),
      medias: (l$medias as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final List<String> medias;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$medias = medias;
    _resultData['medias'] = l$medias.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$content,
      Object.hashAll(l$medias.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePost$updatePost$steps) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (l$medias.length != lOther$medias.length) {
      return false;
    }
    for (int i = 0; i < l$medias.length; i++) {
      final l$medias$entry = l$medias[i];
      final lOther$medias$entry = lOther$medias[i];
      if (l$medias$entry != lOther$medias$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePost$updatePost$steps
    on Mutation$UpdatePost$updatePost$steps {
  CopyWith$Mutation$UpdatePost$updatePost$steps<
          Mutation$UpdatePost$updatePost$steps>
      get copyWith => CopyWith$Mutation$UpdatePost$updatePost$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePost$updatePost$steps<TRes> {
  factory CopyWith$Mutation$UpdatePost$updatePost$steps(
    Mutation$UpdatePost$updatePost$steps instance,
    TRes Function(Mutation$UpdatePost$updatePost$steps) then,
  ) = _CopyWithImpl$Mutation$UpdatePost$updatePost$steps;

  factory CopyWith$Mutation$UpdatePost$updatePost$steps.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePost$updatePost$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdatePost$updatePost$steps<TRes>
    implements CopyWith$Mutation$UpdatePost$updatePost$steps<TRes> {
  _CopyWithImpl$Mutation$UpdatePost$updatePost$steps(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePost$updatePost$steps _instance;

  final TRes Function(Mutation$UpdatePost$updatePost$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePost$updatePost$steps(
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        medias: medias == _undefined || medias == null
            ? _instance.medias
            : (medias as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdatePost$updatePost$steps<TRes>
    implements CopyWith$Mutation$UpdatePost$updatePost$steps<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePost$updatePost$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateEmojiOfPost {
  factory Variables$Mutation$UpdateEmojiOfPost(
          {required Input$UpdateEmojiDto data}) =>
      Variables$Mutation$UpdateEmojiOfPost._({
        r'data': data,
      });

  Variables$Mutation$UpdateEmojiOfPost._(this._$data);

  factory Variables$Mutation$UpdateEmojiOfPost.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UpdateEmojiDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$UpdateEmojiOfPost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateEmojiDto get data => (_$data['data'] as Input$UpdateEmojiDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateEmojiOfPost<
          Variables$Mutation$UpdateEmojiOfPost>
      get copyWith => CopyWith$Variables$Mutation$UpdateEmojiOfPost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateEmojiOfPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateEmojiOfPost<TRes> {
  factory CopyWith$Variables$Mutation$UpdateEmojiOfPost(
    Variables$Mutation$UpdateEmojiOfPost instance,
    TRes Function(Variables$Mutation$UpdateEmojiOfPost) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateEmojiOfPost;

  factory CopyWith$Variables$Mutation$UpdateEmojiOfPost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateEmojiOfPost;

  TRes call({Input$UpdateEmojiDto? data});
}

class _CopyWithImpl$Variables$Mutation$UpdateEmojiOfPost<TRes>
    implements CopyWith$Variables$Mutation$UpdateEmojiOfPost<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateEmojiOfPost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateEmojiOfPost _instance;

  final TRes Function(Variables$Mutation$UpdateEmojiOfPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$UpdateEmojiOfPost._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UpdateEmojiDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateEmojiOfPost<TRes>
    implements CopyWith$Variables$Mutation$UpdateEmojiOfPost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateEmojiOfPost(this._res);

  TRes _res;

  call({Input$UpdateEmojiDto? data}) => _res;
}

class Mutation$UpdateEmojiOfPost {
  Mutation$UpdateEmojiOfPost({
    required this.updateEmojiOfPost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateEmojiOfPost.fromJson(Map<String, dynamic> json) {
    final l$updateEmojiOfPost = json['updateEmojiOfPost'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEmojiOfPost(
      updateEmojiOfPost: Mutation$UpdateEmojiOfPost$updateEmojiOfPost.fromJson(
          (l$updateEmojiOfPost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateEmojiOfPost$updateEmojiOfPost updateEmojiOfPost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateEmojiOfPost = updateEmojiOfPost;
    _resultData['updateEmojiOfPost'] = l$updateEmojiOfPost.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateEmojiOfPost = updateEmojiOfPost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateEmojiOfPost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateEmojiOfPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateEmojiOfPost = updateEmojiOfPost;
    final lOther$updateEmojiOfPost = other.updateEmojiOfPost;
    if (l$updateEmojiOfPost != lOther$updateEmojiOfPost) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateEmojiOfPost
    on Mutation$UpdateEmojiOfPost {
  CopyWith$Mutation$UpdateEmojiOfPost<Mutation$UpdateEmojiOfPost>
      get copyWith => CopyWith$Mutation$UpdateEmojiOfPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateEmojiOfPost<TRes> {
  factory CopyWith$Mutation$UpdateEmojiOfPost(
    Mutation$UpdateEmojiOfPost instance,
    TRes Function(Mutation$UpdateEmojiOfPost) then,
  ) = _CopyWithImpl$Mutation$UpdateEmojiOfPost;

  factory CopyWith$Mutation$UpdateEmojiOfPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEmojiOfPost;

  TRes call({
    Mutation$UpdateEmojiOfPost$updateEmojiOfPost? updateEmojiOfPost,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes>
      get updateEmojiOfPost;
}

class _CopyWithImpl$Mutation$UpdateEmojiOfPost<TRes>
    implements CopyWith$Mutation$UpdateEmojiOfPost<TRes> {
  _CopyWithImpl$Mutation$UpdateEmojiOfPost(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEmojiOfPost _instance;

  final TRes Function(Mutation$UpdateEmojiOfPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateEmojiOfPost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEmojiOfPost(
        updateEmojiOfPost:
            updateEmojiOfPost == _undefined || updateEmojiOfPost == null
                ? _instance.updateEmojiOfPost
                : (updateEmojiOfPost
                    as Mutation$UpdateEmojiOfPost$updateEmojiOfPost),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes>
      get updateEmojiOfPost {
    final local$updateEmojiOfPost = _instance.updateEmojiOfPost;
    return CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
        local$updateEmojiOfPost, (e) => call(updateEmojiOfPost: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateEmojiOfPost<TRes>
    implements CopyWith$Mutation$UpdateEmojiOfPost<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEmojiOfPost(this._res);

  TRes _res;

  call({
    Mutation$UpdateEmojiOfPost$updateEmojiOfPost? updateEmojiOfPost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes>
      get updateEmojiOfPost =>
          CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost.stub(_res);
}

const documentNodeMutationUpdateEmojiOfPost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateEmojiOfPost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateEmojiDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateEmojiOfPost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'emojis'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'k'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'v'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateEmojiOfPost _parserFn$Mutation$UpdateEmojiOfPost(
        Map<String, dynamic> data) =>
    Mutation$UpdateEmojiOfPost.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateEmojiOfPost = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateEmojiOfPost?,
);

class Options$Mutation$UpdateEmojiOfPost
    extends graphql.MutationOptions<Mutation$UpdateEmojiOfPost> {
  Options$Mutation$UpdateEmojiOfPost({
    String? operationName,
    required Variables$Mutation$UpdateEmojiOfPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEmojiOfPost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEmojiOfPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEmojiOfPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateEmojiOfPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEmojiOfPost,
          parserFn: _parserFn$Mutation$UpdateEmojiOfPost,
        );

  final OnMutationCompleted$Mutation$UpdateEmojiOfPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateEmojiOfPost
    extends graphql.WatchQueryOptions<Mutation$UpdateEmojiOfPost> {
  WatchOptions$Mutation$UpdateEmojiOfPost({
    String? operationName,
    required Variables$Mutation$UpdateEmojiOfPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEmojiOfPost? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateEmojiOfPost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateEmojiOfPost,
        );
}

extension ClientExtension$Mutation$UpdateEmojiOfPost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateEmojiOfPost>>
      mutate$UpdateEmojiOfPost(
              Options$Mutation$UpdateEmojiOfPost options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateEmojiOfPost>
      watchMutation$UpdateEmojiOfPost(
              WatchOptions$Mutation$UpdateEmojiOfPost options) =>
          this.watchMutation(options);
}

class Mutation$UpdateEmojiOfPost$HookResult {
  Mutation$UpdateEmojiOfPost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateEmojiOfPost runMutation;

  final graphql.QueryResult<Mutation$UpdateEmojiOfPost> result;
}

Mutation$UpdateEmojiOfPost$HookResult useMutation$UpdateEmojiOfPost(
    [WidgetOptions$Mutation$UpdateEmojiOfPost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateEmojiOfPost());
  return Mutation$UpdateEmojiOfPost$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateEmojiOfPost>
    useWatchMutation$UpdateEmojiOfPost(
            WatchOptions$Mutation$UpdateEmojiOfPost options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateEmojiOfPost
    extends graphql.MutationOptions<Mutation$UpdateEmojiOfPost> {
  WidgetOptions$Mutation$UpdateEmojiOfPost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEmojiOfPost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEmojiOfPost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEmojiOfPost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateEmojiOfPost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEmojiOfPost,
          parserFn: _parserFn$Mutation$UpdateEmojiOfPost,
        );

  final OnMutationCompleted$Mutation$UpdateEmojiOfPost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateEmojiOfPost
    = graphql.MultiSourceResult<Mutation$UpdateEmojiOfPost> Function(
  Variables$Mutation$UpdateEmojiOfPost, {
  Object? optimisticResult,
  Mutation$UpdateEmojiOfPost? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateEmojiOfPost = widgets.Widget Function(
  RunMutation$Mutation$UpdateEmojiOfPost,
  graphql.QueryResult<Mutation$UpdateEmojiOfPost>?,
);

class Mutation$UpdateEmojiOfPost$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateEmojiOfPost> {
  Mutation$UpdateEmojiOfPost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateEmojiOfPost? options,
    required Builder$Mutation$UpdateEmojiOfPost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateEmojiOfPost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateEmojiOfPost$updateEmojiOfPost {
  Mutation$UpdateEmojiOfPost$updateEmojiOfPost({
    required this.id,
    required this.name,
    required this.emojis,
    this.$__typename = 'Post',
  });

  factory Mutation$UpdateEmojiOfPost$updateEmojiOfPost.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$emojis = json['emojis'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
      id: (l$id as String),
      name: (l$name as String),
      emojis: (l$emojis as List<dynamic>)
          .map((e) =>
              Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis> emojis;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emojis = emojis;
    _resultData['emojis'] = l$emojis.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$emojis = emojis;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$emojis.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateEmojiOfPost$updateEmojiOfPost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emojis = emojis;
    final lOther$emojis = other.emojis;
    if (l$emojis.length != lOther$emojis.length) {
      return false;
    }
    for (int i = 0; i < l$emojis.length; i++) {
      final l$emojis$entry = l$emojis[i];
      final lOther$emojis$entry = lOther$emojis[i];
      if (l$emojis$entry != lOther$emojis$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateEmojiOfPost$updateEmojiOfPost
    on Mutation$UpdateEmojiOfPost$updateEmojiOfPost {
  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<
          Mutation$UpdateEmojiOfPost$updateEmojiOfPost>
      get copyWith => CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes> {
  factory CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
    Mutation$UpdateEmojiOfPost$updateEmojiOfPost instance,
    TRes Function(Mutation$UpdateEmojiOfPost$updateEmojiOfPost) then,
  ) = _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost;

  factory CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost;

  TRes call({
    String? id,
    String? name,
    List<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>? emojis,
    String? $__typename,
  });
  TRes emojis(
      Iterable<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis> Function(
              Iterable<
                  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<
                      Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes>
    implements CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes> {
  _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEmojiOfPost$updateEmojiOfPost _instance;

  final TRes Function(Mutation$UpdateEmojiOfPost$updateEmojiOfPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? emojis = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEmojiOfPost$updateEmojiOfPost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis
                as List<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes emojis(
          Iterable<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<
                          Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis.map((e) =>
              CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes>
    implements CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>? emojis,
    String? $__typename,
  }) =>
      _res;

  emojis(_fn) => _res;
}

class Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis {
  Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis.fromJson(
      Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
      k: (l$k as String),
      v: (l$v as List<dynamic>).map((e) => (e as String)).toList(),
      qty: (l$qty as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String k;

  final List<String> v;

  final double qty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$k = k;
    _resultData['k'] = l$k;
    final l$v = v;
    _resultData['v'] = l$v.map((e) => e).toList();
    final l$qty = qty;
    _resultData['qty'] = l$qty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$k = k;
    final l$v = v;
    final l$qty = qty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$k,
      Object.hashAll(l$v.map((v) => v)),
      l$qty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$k = k;
    final lOther$k = other.k;
    if (l$k != lOther$k) {
      return false;
    }
    final l$v = v;
    final lOther$v = other.v;
    if (l$v.length != lOther$v.length) {
      return false;
    }
    for (int i = 0; i < l$v.length; i++) {
      final l$v$entry = l$v[i];
      final lOther$v$entry = lOther$v[i];
      if (l$v$entry != lOther$v$entry) {
        return false;
      }
    }
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis
    on Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis {
  CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<
          Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis>
      get copyWith =>
          CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<
    TRes> {
  factory CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
    Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis instance,
    TRes Function(Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis) then,
  ) = _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis;

  factory CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<TRes>
    implements
        CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<TRes> {
  _CopyWithImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis _instance;

  final TRes Function(Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<
        TRes>
    implements
        CopyWith$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEmojiOfPost$updateEmojiOfPost$emojis(
      this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeletePost {
  factory Variables$Mutation$DeletePost({required String id}) =>
      Variables$Mutation$DeletePost._({
        r'id': id,
      });

  Variables$Mutation$DeletePost._(this._$data);

  factory Variables$Mutation$DeletePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeletePost._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeletePost<Variables$Mutation$DeletePost>
      get copyWith => CopyWith$Variables$Mutation$DeletePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeletePost<TRes> {
  factory CopyWith$Variables$Mutation$DeletePost(
    Variables$Mutation$DeletePost instance,
    TRes Function(Variables$Mutation$DeletePost) then,
  ) = _CopyWithImpl$Variables$Mutation$DeletePost;

  factory CopyWith$Variables$Mutation$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeletePost;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeletePost<TRes>
    implements CopyWith$Variables$Mutation$DeletePost<TRes> {
  _CopyWithImpl$Variables$Mutation$DeletePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeletePost _instance;

  final TRes Function(Variables$Mutation$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeletePost._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeletePost<TRes>
    implements CopyWith$Variables$Mutation$DeletePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeletePost(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeletePost {
  Mutation$DeletePost({
    required this.deletePost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeletePost.fromJson(Map<String, dynamic> json) {
    final l$deletePost = json['deletePost'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePost(
      deletePost: Mutation$DeletePost$deletePost.fromJson(
          (l$deletePost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeletePost$deletePost deletePost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePost = deletePost;
    _resultData['deletePost'] = l$deletePost.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePost = deletePost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deletePost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeletePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePost = deletePost;
    final lOther$deletePost = other.deletePost;
    if (l$deletePost != lOther$deletePost) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeletePost on Mutation$DeletePost {
  CopyWith$Mutation$DeletePost<Mutation$DeletePost> get copyWith =>
      CopyWith$Mutation$DeletePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeletePost<TRes> {
  factory CopyWith$Mutation$DeletePost(
    Mutation$DeletePost instance,
    TRes Function(Mutation$DeletePost) then,
  ) = _CopyWithImpl$Mutation$DeletePost;

  factory CopyWith$Mutation$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePost;

  TRes call({
    Mutation$DeletePost$deletePost? deletePost,
    String? $__typename,
  });
  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost;
}

class _CopyWithImpl$Mutation$DeletePost<TRes>
    implements CopyWith$Mutation$DeletePost<TRes> {
  _CopyWithImpl$Mutation$DeletePost(
    this._instance,
    this._then,
  );

  final Mutation$DeletePost _instance;

  final TRes Function(Mutation$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePost(
        deletePost: deletePost == _undefined || deletePost == null
            ? _instance.deletePost
            : (deletePost as Mutation$DeletePost$deletePost),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost {
    final local$deletePost = _instance.deletePost;
    return CopyWith$Mutation$DeletePost$deletePost(
        local$deletePost, (e) => call(deletePost: e));
  }
}

class _CopyWithStubImpl$Mutation$DeletePost<TRes>
    implements CopyWith$Mutation$DeletePost<TRes> {
  _CopyWithStubImpl$Mutation$DeletePost(this._res);

  TRes _res;

  call({
    Mutation$DeletePost$deletePost? deletePost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost =>
      CopyWith$Mutation$DeletePost$deletePost.stub(_res);
}

const documentNodeMutationDeletePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nop_eat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepare_time'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_time_post'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'qty_comments'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeletePost _parserFn$Mutation$DeletePost(Map<String, dynamic> data) =>
    Mutation$DeletePost.fromJson(data);
typedef OnMutationCompleted$Mutation$DeletePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeletePost?,
);

class Options$Mutation$DeletePost
    extends graphql.MutationOptions<Mutation$DeletePost> {
  Options$Mutation$DeletePost({
    String? operationName,
    required Variables$Mutation$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeletePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeletePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeletePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeletePost,
          parserFn: _parserFn$Mutation$DeletePost,
        );

  final OnMutationCompleted$Mutation$DeletePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeletePost
    extends graphql.WatchQueryOptions<Mutation$DeletePost> {
  WatchOptions$Mutation$DeletePost({
    String? operationName,
    required Variables$Mutation$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePost? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeletePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeletePost,
        );
}

extension ClientExtension$Mutation$DeletePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeletePost>> mutate$DeletePost(
          Options$Mutation$DeletePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeletePost> watchMutation$DeletePost(
          WatchOptions$Mutation$DeletePost options) =>
      this.watchMutation(options);
}

class Mutation$DeletePost$HookResult {
  Mutation$DeletePost$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeletePost runMutation;

  final graphql.QueryResult<Mutation$DeletePost> result;
}

Mutation$DeletePost$HookResult useMutation$DeletePost(
    [WidgetOptions$Mutation$DeletePost? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeletePost());
  return Mutation$DeletePost$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeletePost> useWatchMutation$DeletePost(
        WatchOptions$Mutation$DeletePost options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeletePost
    extends graphql.MutationOptions<Mutation$DeletePost> {
  WidgetOptions$Mutation$DeletePost({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeletePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeletePost>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeletePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeletePost,
          parserFn: _parserFn$Mutation$DeletePost,
        );

  final OnMutationCompleted$Mutation$DeletePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeletePost
    = graphql.MultiSourceResult<Mutation$DeletePost> Function(
  Variables$Mutation$DeletePost, {
  Object? optimisticResult,
  Mutation$DeletePost? typedOptimisticResult,
});
typedef Builder$Mutation$DeletePost = widgets.Widget Function(
  RunMutation$Mutation$DeletePost,
  graphql.QueryResult<Mutation$DeletePost>?,
);

class Mutation$DeletePost$Widget
    extends graphql_flutter.Mutation<Mutation$DeletePost> {
  Mutation$DeletePost$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeletePost? options,
    required Builder$Mutation$DeletePost builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeletePost(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeletePost$deletePost {
  Mutation$DeletePost$deletePost({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.date_time_post,
    required this.delete_at,
    required this.category,
    required this.ingredients,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Mutation$DeletePost$deletePost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$date_time_post = json['date_time_post'];
    final l$delete_at = json['delete_at'];
    final l$category = json['category'];
    final l$ingredients = json['ingredients'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePost$deletePost(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      date_time_post: (l$date_time_post as String),
      delete_at: (l$delete_at as String),
      category: (l$category as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      qty_comments: (l$qty_comments as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final String date_time_post;

  final String delete_at;

  final String category;

  final List<String> ingredients;

  final double qty_comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$nop_eat = nop_eat;
    _resultData['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    _resultData['prepare_time'] = l$prepare_time;
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$qty_comments = qty_comments;
    _resultData['qty_comments'] = l$qty_comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$date_time_post = date_time_post;
    final l$delete_at = delete_at;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$qty_comments = qty_comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$date_time_post,
      l$delete_at,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$qty_comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeletePost$deletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$nop_eat = nop_eat;
    final lOther$nop_eat = other.nop_eat;
    if (l$nop_eat != lOther$nop_eat) {
      return false;
    }
    final l$prepare_time = prepare_time;
    final lOther$prepare_time = other.prepare_time;
    if (l$prepare_time != lOther$prepare_time) {
      return false;
    }
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
    }
    final l$qty_comments = qty_comments;
    final lOther$qty_comments = other.qty_comments;
    if (l$qty_comments != lOther$qty_comments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeletePost$deletePost
    on Mutation$DeletePost$deletePost {
  CopyWith$Mutation$DeletePost$deletePost<Mutation$DeletePost$deletePost>
      get copyWith => CopyWith$Mutation$DeletePost$deletePost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeletePost$deletePost<TRes> {
  factory CopyWith$Mutation$DeletePost$deletePost(
    Mutation$DeletePost$deletePost instance,
    TRes Function(Mutation$DeletePost$deletePost) then,
  ) = _CopyWithImpl$Mutation$DeletePost$deletePost;

  factory CopyWith$Mutation$DeletePost$deletePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePost$deletePost;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeletePost$deletePost<TRes>
    implements CopyWith$Mutation$DeletePost$deletePost<TRes> {
  _CopyWithImpl$Mutation$DeletePost$deletePost(
    this._instance,
    this._then,
  );

  final Mutation$DeletePost$deletePost _instance;

  final TRes Function(Mutation$DeletePost$deletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? date_time_post = _undefined,
    Object? delete_at = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePost$deletePost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        nop_eat: nop_eat == _undefined || nop_eat == null
            ? _instance.nop_eat
            : (nop_eat as double),
        prepare_time: prepare_time == _undefined || prepare_time == null
            ? _instance.prepare_time
            : (prepare_time as String),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeletePost$deletePost<TRes>
    implements CopyWith$Mutation$DeletePost$deletePost<TRes> {
  _CopyWithStubImpl$Mutation$DeletePost$deletePost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? date_time_post,
    String? delete_at,
    String? category,
    List<String>? ingredients,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$DeletePost {
  factory Variables$Subscription$DeletePost({required String postId}) =>
      Variables$Subscription$DeletePost._({
        r'postId': postId,
      });

  Variables$Subscription$DeletePost._(this._$data);

  factory Variables$Subscription$DeletePost.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    return Variables$Subscription$DeletePost._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Variables$Subscription$DeletePost<Variables$Subscription$DeletePost>
      get copyWith => CopyWith$Variables$Subscription$DeletePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$DeletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    return Object.hashAll([l$postId]);
  }
}

abstract class CopyWith$Variables$Subscription$DeletePost<TRes> {
  factory CopyWith$Variables$Subscription$DeletePost(
    Variables$Subscription$DeletePost instance,
    TRes Function(Variables$Subscription$DeletePost) then,
  ) = _CopyWithImpl$Variables$Subscription$DeletePost;

  factory CopyWith$Variables$Subscription$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$DeletePost;

  TRes call({String? postId});
}

class _CopyWithImpl$Variables$Subscription$DeletePost<TRes>
    implements CopyWith$Variables$Subscription$DeletePost<TRes> {
  _CopyWithImpl$Variables$Subscription$DeletePost(
    this._instance,
    this._then,
  );

  final Variables$Subscription$DeletePost _instance;

  final TRes Function(Variables$Subscription$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postId = _undefined}) =>
      _then(Variables$Subscription$DeletePost._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$DeletePost<TRes>
    implements CopyWith$Variables$Subscription$DeletePost<TRes> {
  _CopyWithStubImpl$Variables$Subscription$DeletePost(this._res);

  TRes _res;

  call({String? postId}) => _res;
}

class Subscription$DeletePost {
  Subscription$DeletePost({required this.delete_post});

  factory Subscription$DeletePost.fromJson(Map<String, dynamic> json) {
    final l$delete_post = json['delete_post'];
    return Subscription$DeletePost(
        delete_post: Subscription$DeletePost$delete_post.fromJson(
            (l$delete_post as Map<String, dynamic>)));
  }

  final Subscription$DeletePost$delete_post delete_post;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_post = delete_post;
    _resultData['delete_post'] = l$delete_post.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_post = delete_post;
    return Object.hashAll([l$delete_post]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$DeletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete_post = delete_post;
    final lOther$delete_post = other.delete_post;
    if (l$delete_post != lOther$delete_post) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$DeletePost on Subscription$DeletePost {
  CopyWith$Subscription$DeletePost<Subscription$DeletePost> get copyWith =>
      CopyWith$Subscription$DeletePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$DeletePost<TRes> {
  factory CopyWith$Subscription$DeletePost(
    Subscription$DeletePost instance,
    TRes Function(Subscription$DeletePost) then,
  ) = _CopyWithImpl$Subscription$DeletePost;

  factory CopyWith$Subscription$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Subscription$DeletePost;

  TRes call({Subscription$DeletePost$delete_post? delete_post});
  CopyWith$Subscription$DeletePost$delete_post<TRes> get delete_post;
}

class _CopyWithImpl$Subscription$DeletePost<TRes>
    implements CopyWith$Subscription$DeletePost<TRes> {
  _CopyWithImpl$Subscription$DeletePost(
    this._instance,
    this._then,
  );

  final Subscription$DeletePost _instance;

  final TRes Function(Subscription$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? delete_post = _undefined}) =>
      _then(Subscription$DeletePost(
          delete_post: delete_post == _undefined || delete_post == null
              ? _instance.delete_post
              : (delete_post as Subscription$DeletePost$delete_post)));

  CopyWith$Subscription$DeletePost$delete_post<TRes> get delete_post {
    final local$delete_post = _instance.delete_post;
    return CopyWith$Subscription$DeletePost$delete_post(
        local$delete_post, (e) => call(delete_post: e));
  }
}

class _CopyWithStubImpl$Subscription$DeletePost<TRes>
    implements CopyWith$Subscription$DeletePost<TRes> {
  _CopyWithStubImpl$Subscription$DeletePost(this._res);

  TRes _res;

  call({Subscription$DeletePost$delete_post? delete_post}) => _res;

  CopyWith$Subscription$DeletePost$delete_post<TRes> get delete_post =>
      CopyWith$Subscription$DeletePost$delete_post.stub(_res);
}

const documentNodeSubscriptionDeletePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'DeletePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete_post'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'postId'),
            value: VariableNode(name: NameNode(value: 'postId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delete_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Subscription$DeletePost _parserFn$Subscription$DeletePost(
        Map<String, dynamic> data) =>
    Subscription$DeletePost.fromJson(data);

class Options$Subscription$DeletePost
    extends graphql.SubscriptionOptions<Subscription$DeletePost> {
  Options$Subscription$DeletePost({
    String? operationName,
    required Variables$Subscription$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DeletePost? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionDeletePost,
          parserFn: _parserFn$Subscription$DeletePost,
        );
}

class WatchOptions$Subscription$DeletePost
    extends graphql.WatchQueryOptions<Subscription$DeletePost> {
  WatchOptions$Subscription$DeletePost({
    String? operationName,
    required Variables$Subscription$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DeletePost? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionDeletePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$DeletePost,
        );
}

class FetchMoreOptions$Subscription$DeletePost
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$DeletePost({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$DeletePost variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionDeletePost,
        );
}

extension ClientExtension$Subscription$DeletePost on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$DeletePost>> subscribe$DeletePost(
          Options$Subscription$DeletePost options) =>
      this.subscribe(options);
  graphql.ObservableQuery<Subscription$DeletePost> watchSubscription$DeletePost(
          WatchOptions$Subscription$DeletePost options) =>
      this.watchQuery(options);
}

graphql.QueryResult<Subscription$DeletePost> useSubscription$DeletePost(
        Options$Subscription$DeletePost options) =>
    graphql_flutter.useSubscription(options);

class Subscription$DeletePost$Widget
    extends graphql_flutter.Subscription<Subscription$DeletePost> {
  Subscription$DeletePost$Widget({
    widgets.Key? key,
    required Options$Subscription$DeletePost options,
    required graphql_flutter.SubscriptionBuilder<Subscription$DeletePost>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$DeletePost>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options,
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$DeletePost$delete_post {
  Subscription$DeletePost$delete_post({
    required this.id,
    required this.delete_at,
  });

  factory Subscription$DeletePost$delete_post.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$delete_at = json['delete_at'];
    return Subscription$DeletePost$delete_post(
      id: (l$id as String),
      delete_at: (l$delete_at as String),
    );
  }

  final String id;

  final String delete_at;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$delete_at = delete_at;
    _resultData['delete_at'] = l$delete_at;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$delete_at = delete_at;
    return Object.hashAll([
      l$id,
      l$delete_at,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$DeletePost$delete_post) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$delete_at = delete_at;
    final lOther$delete_at = other.delete_at;
    if (l$delete_at != lOther$delete_at) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$DeletePost$delete_post
    on Subscription$DeletePost$delete_post {
  CopyWith$Subscription$DeletePost$delete_post<
          Subscription$DeletePost$delete_post>
      get copyWith => CopyWith$Subscription$DeletePost$delete_post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$DeletePost$delete_post<TRes> {
  factory CopyWith$Subscription$DeletePost$delete_post(
    Subscription$DeletePost$delete_post instance,
    TRes Function(Subscription$DeletePost$delete_post) then,
  ) = _CopyWithImpl$Subscription$DeletePost$delete_post;

  factory CopyWith$Subscription$DeletePost$delete_post.stub(TRes res) =
      _CopyWithStubImpl$Subscription$DeletePost$delete_post;

  TRes call({
    String? id,
    String? delete_at,
  });
}

class _CopyWithImpl$Subscription$DeletePost$delete_post<TRes>
    implements CopyWith$Subscription$DeletePost$delete_post<TRes> {
  _CopyWithImpl$Subscription$DeletePost$delete_post(
    this._instance,
    this._then,
  );

  final Subscription$DeletePost$delete_post _instance;

  final TRes Function(Subscription$DeletePost$delete_post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? delete_at = _undefined,
  }) =>
      _then(Subscription$DeletePost$delete_post(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        delete_at: delete_at == _undefined || delete_at == null
            ? _instance.delete_at
            : (delete_at as String),
      ));
}

class _CopyWithStubImpl$Subscription$DeletePost$delete_post<TRes>
    implements CopyWith$Subscription$DeletePost$delete_post<TRes> {
  _CopyWithStubImpl$Subscription$DeletePost$delete_post(this._res);

  TRes _res;

  call({
    String? id,
    String? delete_at,
  }) =>
      _res;
}
