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

class Variables$Query$PostsByOwner {
  factory Variables$Query$PostsByOwner({required String owner_id}) =>
      Variables$Query$PostsByOwner._({
        r'owner_id': owner_id,
      });

  Variables$Query$PostsByOwner._(this._$data);

  factory Variables$Query$PostsByOwner.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$owner_id = data['owner_id'];
    result$data['owner_id'] = (l$owner_id as String);
    return Variables$Query$PostsByOwner._(result$data);
  }

  Map<String, dynamic> _$data;

  String get owner_id => (_$data['owner_id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$owner_id = owner_id;
    result$data['owner_id'] = l$owner_id;
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
    final l$owner_id = owner_id;
    final lOther$owner_id = other.owner_id;
    if (l$owner_id != lOther$owner_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner_id = owner_id;
    return Object.hashAll([l$owner_id]);
  }
}

abstract class CopyWith$Variables$Query$PostsByOwner<TRes> {
  factory CopyWith$Variables$Query$PostsByOwner(
    Variables$Query$PostsByOwner instance,
    TRes Function(Variables$Query$PostsByOwner) then,
  ) = _CopyWithImpl$Variables$Query$PostsByOwner;

  factory CopyWith$Variables$Query$PostsByOwner.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PostsByOwner;

  TRes call({String? owner_id});
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

  TRes call({Object? owner_id = _undefined}) =>
      _then(Variables$Query$PostsByOwner._({
        ..._instance._$data,
        if (owner_id != _undefined && owner_id != null)
          'owner_id': (owner_id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$PostsByOwner<TRes>
    implements CopyWith$Variables$Query$PostsByOwner<TRes> {
  _CopyWithStubImpl$Variables$Query$PostsByOwner(this._res);

  TRes _res;

  call({String? owner_id}) => _res;
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
        variable: VariableNode(name: NameNode(value: 'owner_id')),
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
        name: NameNode(value: 'postsByOwner'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'owner_id'),
            value: VariableNode(name: NameNode(value: 'owner_id')),
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
