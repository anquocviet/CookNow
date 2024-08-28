// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Search {
  factory Variables$Query$Search({required Input$GetPostDto data}) =>
      Variables$Query$Search._({
        r'data': data,
      });

  Variables$Query$Search._(this._$data);

  factory Variables$Query$Search.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$Search._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Search<Variables$Query$Search> get copyWith =>
      CopyWith$Variables$Query$Search(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Search) ||
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

abstract class CopyWith$Variables$Query$Search<TRes> {
  factory CopyWith$Variables$Query$Search(
    Variables$Query$Search instance,
    TRes Function(Variables$Query$Search) then,
  ) = _CopyWithImpl$Variables$Query$Search;

  factory CopyWith$Variables$Query$Search.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Search;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithImpl$Variables$Query$Search(
    this._instance,
    this._then,
  );

  final Variables$Query$Search _instance;

  final TRes Function(Variables$Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Variables$Query$Search._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithStubImpl$Variables$Query$Search(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$Search {
  Query$Search({
    required this.searchPost,
    required this.searchUser,
    this.$__typename = 'Query',
  });

  factory Query$Search.fromJson(Map<String, dynamic> json) {
    final l$searchPost = json['searchPost'];
    final l$searchUser = json['searchUser'];
    final l$$__typename = json['__typename'];
    return Query$Search(
      searchPost: (l$searchPost as List<dynamic>)
          .map((e) =>
              Query$Search$searchPost.fromJson((e as Map<String, dynamic>)))
          .toList(),
      searchUser: (l$searchUser as List<dynamic>)
          .map((e) =>
              Query$Search$searchUser.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Search$searchPost> searchPost;

  final List<Query$Search$searchUser> searchUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchPost = searchPost;
    _resultData['searchPost'] = l$searchPost.map((e) => e.toJson()).toList();
    final l$searchUser = searchUser;
    _resultData['searchUser'] = l$searchUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchPost = searchPost;
    final l$searchUser = searchUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchPost.map((v) => v)),
      Object.hashAll(l$searchUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchPost = searchPost;
    final lOther$searchPost = other.searchPost;
    if (l$searchPost.length != lOther$searchPost.length) {
      return false;
    }
    for (int i = 0; i < l$searchPost.length; i++) {
      final l$searchPost$entry = l$searchPost[i];
      final lOther$searchPost$entry = lOther$searchPost[i];
      if (l$searchPost$entry != lOther$searchPost$entry) {
        return false;
      }
    }
    final l$searchUser = searchUser;
    final lOther$searchUser = other.searchUser;
    if (l$searchUser.length != lOther$searchUser.length) {
      return false;
    }
    for (int i = 0; i < l$searchUser.length; i++) {
      final l$searchUser$entry = l$searchUser[i];
      final lOther$searchUser$entry = lOther$searchUser[i];
      if (l$searchUser$entry != lOther$searchUser$entry) {
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

extension UtilityExtension$Query$Search on Query$Search {
  CopyWith$Query$Search<Query$Search> get copyWith => CopyWith$Query$Search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search<TRes> {
  factory CopyWith$Query$Search(
    Query$Search instance,
    TRes Function(Query$Search) then,
  ) = _CopyWithImpl$Query$Search;

  factory CopyWith$Query$Search.stub(TRes res) = _CopyWithStubImpl$Query$Search;

  TRes call({
    List<Query$Search$searchPost>? searchPost,
    List<Query$Search$searchUser>? searchUser,
    String? $__typename,
  });
  TRes searchPost(
      Iterable<Query$Search$searchPost> Function(
              Iterable<
                  CopyWith$Query$Search$searchPost<Query$Search$searchPost>>)
          _fn);
  TRes searchUser(
      Iterable<Query$Search$searchUser> Function(
              Iterable<
                  CopyWith$Query$Search$searchUser<Query$Search$searchUser>>)
          _fn);
}

class _CopyWithImpl$Query$Search<TRes> implements CopyWith$Query$Search<TRes> {
  _CopyWithImpl$Query$Search(
    this._instance,
    this._then,
  );

  final Query$Search _instance;

  final TRes Function(Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchPost = _undefined,
    Object? searchUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search(
        searchPost: searchPost == _undefined || searchPost == null
            ? _instance.searchPost
            : (searchPost as List<Query$Search$searchPost>),
        searchUser: searchUser == _undefined || searchUser == null
            ? _instance.searchUser
            : (searchUser as List<Query$Search$searchUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchPost(
          Iterable<Query$Search$searchPost> Function(
                  Iterable<
                      CopyWith$Query$Search$searchPost<
                          Query$Search$searchPost>>)
              _fn) =>
      call(
          searchPost: _fn(
              _instance.searchPost.map((e) => CopyWith$Query$Search$searchPost(
                    e,
                    (i) => i,
                  ))).toList());

  TRes searchUser(
          Iterable<Query$Search$searchUser> Function(
                  Iterable<
                      CopyWith$Query$Search$searchUser<
                          Query$Search$searchUser>>)
              _fn) =>
      call(
          searchUser: _fn(
              _instance.searchUser.map((e) => CopyWith$Query$Search$searchUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Search<TRes>
    implements CopyWith$Query$Search<TRes> {
  _CopyWithStubImpl$Query$Search(this._res);

  TRes _res;

  call({
    List<Query$Search$searchPost>? searchPost,
    List<Query$Search$searchUser>? searchUser,
    String? $__typename,
  }) =>
      _res;

  searchPost(_fn) => _res;

  searchUser(_fn) => _res;
}

const documentNodeQuerySearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Search'),
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
        name: NameNode(value: 'searchPost'),
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
            name: NameNode(value: 'ingredients'),
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
            name: NameNode(value: 'category'),
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
        name: NameNode(value: 'searchUser'),
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'living'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
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
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'username'),
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
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
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
Query$Search _parserFn$Query$Search(Map<String, dynamic> data) =>
    Query$Search.fromJson(data);
typedef OnQueryComplete$Query$Search = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Search?,
);

class Options$Query$Search extends graphql.QueryOptions<Query$Search> {
  Options$Query$Search({
    String? operationName,
    required Variables$Query$Search variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Search? onComplete,
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
                    data == null ? null : _parserFn$Query$Search(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearch,
          parserFn: _parserFn$Query$Search,
        );

  final OnQueryComplete$Query$Search? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Search
    extends graphql.WatchQueryOptions<Query$Search> {
  WatchOptions$Query$Search({
    String? operationName,
    required Variables$Query$Search variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
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
          document: documentNodeQuerySearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Search,
        );
}

class FetchMoreOptions$Query$Search extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Search({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Search variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearch,
        );
}

extension ClientExtension$Query$Search on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Search>> query$Search(
          Options$Query$Search options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Search> watchQuery$Search(
          WatchOptions$Query$Search options) =>
      this.watchQuery(options);
  void writeQuery$Search({
    required Query$Search data,
    required Variables$Query$Search variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearch),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Search? readQuery$Search({
    required Variables$Query$Search variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearch),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Search.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Search> useQuery$Search(
        Options$Query$Search options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Search> useWatchQuery$Search(
        WatchOptions$Query$Search options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Search$Widget extends graphql_flutter.Query<Query$Search> {
  Query$Search$Widget({
    widgets.Key? key,
    required Options$Query$Search options,
    required graphql_flutter.QueryBuilder<Query$Search> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Search$searchPost {
  Query$Search$searchPost({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.ingredients,
    required this.date_time_post,
    required this.category,
    required this.owner,
    required this.steps,
    required this.emojis,
    required this.qty_comments,
    this.$__typename = 'Post',
  });

  factory Query$Search$searchPost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$ingredients = json['ingredients'];
    final l$date_time_post = json['date_time_post'];
    final l$category = json['category'];
    final l$owner = json['owner'];
    final l$steps = json['steps'];
    final l$emojis = json['emojis'];
    final l$qty_comments = json['qty_comments'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchPost(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      date_time_post: (l$date_time_post as String),
      category: (l$category as String),
      owner: Query$Search$searchPost$owner.fromJson(
          (l$owner as Map<String, dynamic>)),
      steps: (l$steps as List<dynamic>)
          .map((e) => Query$Search$searchPost$steps.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      emojis: (l$emojis as List<dynamic>)
          .map((e) => Query$Search$searchPost$emojis.fromJson(
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

  final List<String> ingredients;

  final String date_time_post;

  final String category;

  final Query$Search$searchPost$owner owner;

  final List<Query$Search$searchPost$steps> steps;

  final List<Query$Search$searchPost$emojis> emojis;

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
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$date_time_post = date_time_post;
    _resultData['date_time_post'] = l$date_time_post;
    final l$category = category;
    _resultData['category'] = l$category;
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
    final l$ingredients = ingredients;
    final l$date_time_post = date_time_post;
    final l$category = category;
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
      Object.hashAll(l$ingredients.map((v) => v)),
      l$date_time_post,
      l$category,
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
    if (!(other is Query$Search$searchPost) ||
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
    final l$date_time_post = date_time_post;
    final lOther$date_time_post = other.date_time_post;
    if (l$date_time_post != lOther$date_time_post) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
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

extension UtilityExtension$Query$Search$searchPost on Query$Search$searchPost {
  CopyWith$Query$Search$searchPost<Query$Search$searchPost> get copyWith =>
      CopyWith$Query$Search$searchPost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$searchPost<TRes> {
  factory CopyWith$Query$Search$searchPost(
    Query$Search$searchPost instance,
    TRes Function(Query$Search$searchPost) then,
  ) = _CopyWithImpl$Query$Search$searchPost;

  factory CopyWith$Query$Search$searchPost.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchPost;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    List<String>? ingredients,
    String? date_time_post,
    String? category,
    Query$Search$searchPost$owner? owner,
    List<Query$Search$searchPost$steps>? steps,
    List<Query$Search$searchPost$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  });
  CopyWith$Query$Search$searchPost$owner<TRes> get owner;
  TRes steps(
      Iterable<Query$Search$searchPost$steps> Function(
              Iterable<
                  CopyWith$Query$Search$searchPost$steps<
                      Query$Search$searchPost$steps>>)
          _fn);
  TRes emojis(
      Iterable<Query$Search$searchPost$emojis> Function(
              Iterable<
                  CopyWith$Query$Search$searchPost$emojis<
                      Query$Search$searchPost$emojis>>)
          _fn);
}

class _CopyWithImpl$Query$Search$searchPost<TRes>
    implements CopyWith$Query$Search$searchPost<TRes> {
  _CopyWithImpl$Query$Search$searchPost(
    this._instance,
    this._then,
  );

  final Query$Search$searchPost _instance;

  final TRes Function(Query$Search$searchPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? ingredients = _undefined,
    Object? date_time_post = _undefined,
    Object? category = _undefined,
    Object? owner = _undefined,
    Object? steps = _undefined,
    Object? emojis = _undefined,
    Object? qty_comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchPost(
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
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        date_time_post: date_time_post == _undefined || date_time_post == null
            ? _instance.date_time_post
            : (date_time_post as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        owner: owner == _undefined || owner == null
            ? _instance.owner
            : (owner as Query$Search$searchPost$owner),
        steps: steps == _undefined || steps == null
            ? _instance.steps
            : (steps as List<Query$Search$searchPost$steps>),
        emojis: emojis == _undefined || emojis == null
            ? _instance.emojis
            : (emojis as List<Query$Search$searchPost$emojis>),
        qty_comments: qty_comments == _undefined || qty_comments == null
            ? _instance.qty_comments
            : (qty_comments as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$searchPost$owner<TRes> get owner {
    final local$owner = _instance.owner;
    return CopyWith$Query$Search$searchPost$owner(
        local$owner, (e) => call(owner: e));
  }

  TRes steps(
          Iterable<Query$Search$searchPost$steps> Function(
                  Iterable<
                      CopyWith$Query$Search$searchPost$steps<
                          Query$Search$searchPost$steps>>)
              _fn) =>
      call(
          steps: _fn(
              _instance.steps.map((e) => CopyWith$Query$Search$searchPost$steps(
                    e,
                    (i) => i,
                  ))).toList());

  TRes emojis(
          Iterable<Query$Search$searchPost$emojis> Function(
                  Iterable<
                      CopyWith$Query$Search$searchPost$emojis<
                          Query$Search$searchPost$emojis>>)
              _fn) =>
      call(
          emojis: _fn(_instance.emojis
              .map((e) => CopyWith$Query$Search$searchPost$emojis(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Search$searchPost<TRes>
    implements CopyWith$Query$Search$searchPost<TRes> {
  _CopyWithStubImpl$Query$Search$searchPost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    List<String>? ingredients,
    String? date_time_post,
    String? category,
    Query$Search$searchPost$owner? owner,
    List<Query$Search$searchPost$steps>? steps,
    List<Query$Search$searchPost$emojis>? emojis,
    double? qty_comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$searchPost$owner<TRes> get owner =>
      CopyWith$Query$Search$searchPost$owner.stub(_res);

  steps(_fn) => _res;

  emojis(_fn) => _res;
}

class Query$Search$searchPost$owner {
  Query$Search$searchPost$owner({
    required this.user_id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Owner',
  });

  factory Query$Search$searchPost$owner.fromJson(Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchPost$owner(
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
    if (!(other is Query$Search$searchPost$owner) ||
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

extension UtilityExtension$Query$Search$searchPost$owner
    on Query$Search$searchPost$owner {
  CopyWith$Query$Search$searchPost$owner<Query$Search$searchPost$owner>
      get copyWith => CopyWith$Query$Search$searchPost$owner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$searchPost$owner<TRes> {
  factory CopyWith$Query$Search$searchPost$owner(
    Query$Search$searchPost$owner instance,
    TRes Function(Query$Search$searchPost$owner) then,
  ) = _CopyWithImpl$Query$Search$searchPost$owner;

  factory CopyWith$Query$Search$searchPost$owner.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchPost$owner;

  TRes call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$searchPost$owner<TRes>
    implements CopyWith$Query$Search$searchPost$owner<TRes> {
  _CopyWithImpl$Query$Search$searchPost$owner(
    this._instance,
    this._then,
  );

  final Query$Search$searchPost$owner _instance;

  final TRes Function(Query$Search$searchPost$owner) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchPost$owner(
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

class _CopyWithStubImpl$Query$Search$searchPost$owner<TRes>
    implements CopyWith$Query$Search$searchPost$owner<TRes> {
  _CopyWithStubImpl$Query$Search$searchPost$owner(this._res);

  TRes _res;

  call({
    String? user_id,
    String? name,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$searchPost$steps {
  Query$Search$searchPost$steps({
    required this.content,
    required this.medias,
    this.$__typename = 'Step',
  });

  factory Query$Search$searchPost$steps.fromJson(Map<String, dynamic> json) {
    final l$content = json['content'];
    final l$medias = json['medias'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchPost$steps(
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
    if (!(other is Query$Search$searchPost$steps) ||
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

extension UtilityExtension$Query$Search$searchPost$steps
    on Query$Search$searchPost$steps {
  CopyWith$Query$Search$searchPost$steps<Query$Search$searchPost$steps>
      get copyWith => CopyWith$Query$Search$searchPost$steps(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$searchPost$steps<TRes> {
  factory CopyWith$Query$Search$searchPost$steps(
    Query$Search$searchPost$steps instance,
    TRes Function(Query$Search$searchPost$steps) then,
  ) = _CopyWithImpl$Query$Search$searchPost$steps;

  factory CopyWith$Query$Search$searchPost$steps.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchPost$steps;

  TRes call({
    String? content,
    List<String>? medias,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$searchPost$steps<TRes>
    implements CopyWith$Query$Search$searchPost$steps<TRes> {
  _CopyWithImpl$Query$Search$searchPost$steps(
    this._instance,
    this._then,
  );

  final Query$Search$searchPost$steps _instance;

  final TRes Function(Query$Search$searchPost$steps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchPost$steps(
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

class _CopyWithStubImpl$Query$Search$searchPost$steps<TRes>
    implements CopyWith$Query$Search$searchPost$steps<TRes> {
  _CopyWithStubImpl$Query$Search$searchPost$steps(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$searchPost$emojis {
  Query$Search$searchPost$emojis({
    required this.k,
    required this.v,
    required this.qty,
    this.$__typename = 'Emoji',
  });

  factory Query$Search$searchPost$emojis.fromJson(Map<String, dynamic> json) {
    final l$k = json['k'];
    final l$v = json['v'];
    final l$qty = json['qty'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchPost$emojis(
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
    if (!(other is Query$Search$searchPost$emojis) ||
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

extension UtilityExtension$Query$Search$searchPost$emojis
    on Query$Search$searchPost$emojis {
  CopyWith$Query$Search$searchPost$emojis<Query$Search$searchPost$emojis>
      get copyWith => CopyWith$Query$Search$searchPost$emojis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$searchPost$emojis<TRes> {
  factory CopyWith$Query$Search$searchPost$emojis(
    Query$Search$searchPost$emojis instance,
    TRes Function(Query$Search$searchPost$emojis) then,
  ) = _CopyWithImpl$Query$Search$searchPost$emojis;

  factory CopyWith$Query$Search$searchPost$emojis.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchPost$emojis;

  TRes call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$searchPost$emojis<TRes>
    implements CopyWith$Query$Search$searchPost$emojis<TRes> {
  _CopyWithImpl$Query$Search$searchPost$emojis(
    this._instance,
    this._then,
  );

  final Query$Search$searchPost$emojis _instance;

  final TRes Function(Query$Search$searchPost$emojis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? k = _undefined,
    Object? v = _undefined,
    Object? qty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchPost$emojis(
        k: k == _undefined || k == null ? _instance.k : (k as String),
        v: v == _undefined || v == null ? _instance.v : (v as List<String>),
        qty: qty == _undefined || qty == null ? _instance.qty : (qty as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$searchPost$emojis<TRes>
    implements CopyWith$Query$Search$searchPost$emojis<TRes> {
  _CopyWithStubImpl$Query$Search$searchPost$emojis(this._res);

  TRes _res;

  call({
    String? k,
    List<String>? v,
    double? qty,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$searchUser {
  Query$Search$searchUser({
    required this.id,
    required this.name,
    required this.gender,
    required this.living,
    required this.bio,
    required this.avatar,
    required this.age,
    required this.account,
    required this.email,
    required this.phone,
    this.$__typename = 'User',
  });

  factory Query$Search$searchUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$avatar = json['avatar'];
    final l$age = json['age'];
    final l$account = json['account'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchUser(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      avatar: (l$avatar as String),
      age: (l$age as num).toDouble(),
      account: Query$Search$searchUser$account.fromJson(
          (l$account as Map<String, dynamic>)),
      email: (l$email as String),
      phone: (l$phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double gender;

  final String living;

  final String bio;

  final String avatar;

  final double age;

  final Query$Search$searchUser$account account;

  final String email;

  final String phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$living = living;
    final l$bio = bio;
    final l$avatar = avatar;
    final l$age = age;
    final l$account = account;
    final l$email = email;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$living,
      l$bio,
      l$avatar,
      l$age,
      l$account,
      l$email,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$searchUser) ||
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$living = living;
    final lOther$living = other.living;
    if (l$living != lOther$living) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Query$Search$searchUser on Query$Search$searchUser {
  CopyWith$Query$Search$searchUser<Query$Search$searchUser> get copyWith =>
      CopyWith$Query$Search$searchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$searchUser<TRes> {
  factory CopyWith$Query$Search$searchUser(
    Query$Search$searchUser instance,
    TRes Function(Query$Search$searchUser) then,
  ) = _CopyWithImpl$Query$Search$searchUser;

  factory CopyWith$Query$Search$searchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchUser;

  TRes call({
    String? id,
    String? name,
    double? gender,
    String? living,
    String? bio,
    String? avatar,
    double? age,
    Query$Search$searchUser$account? account,
    String? email,
    String? phone,
    String? $__typename,
  });
  CopyWith$Query$Search$searchUser$account<TRes> get account;
}

class _CopyWithImpl$Query$Search$searchUser<TRes>
    implements CopyWith$Query$Search$searchUser<TRes> {
  _CopyWithImpl$Query$Search$searchUser(
    this._instance,
    this._then,
  );

  final Query$Search$searchUser _instance;

  final TRes Function(Query$Search$searchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? avatar = _undefined,
    Object? age = _undefined,
    Object? account = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$Search$searchUser$account),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$searchUser$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$Search$searchUser$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$Search$searchUser<TRes>
    implements CopyWith$Query$Search$searchUser<TRes> {
  _CopyWithStubImpl$Query$Search$searchUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    String? living,
    String? bio,
    String? avatar,
    double? age,
    Query$Search$searchUser$account? account,
    String? email,
    String? phone,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$searchUser$account<TRes> get account =>
      CopyWith$Query$Search$searchUser$account.stub(_res);
}

class Query$Search$searchUser$account {
  Query$Search$searchUser$account({
    required this.username,
    this.$__typename = 'Account',
  });

  factory Query$Search$searchUser$account.fromJson(Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$Search$searchUser$account(
      username: (l$username as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$searchUser$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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

extension UtilityExtension$Query$Search$searchUser$account
    on Query$Search$searchUser$account {
  CopyWith$Query$Search$searchUser$account<Query$Search$searchUser$account>
      get copyWith => CopyWith$Query$Search$searchUser$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$searchUser$account<TRes> {
  factory CopyWith$Query$Search$searchUser$account(
    Query$Search$searchUser$account instance,
    TRes Function(Query$Search$searchUser$account) then,
  ) = _CopyWithImpl$Query$Search$searchUser$account;

  factory CopyWith$Query$Search$searchUser$account.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$searchUser$account;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$searchUser$account<TRes>
    implements CopyWith$Query$Search$searchUser$account<TRes> {
  _CopyWithImpl$Query$Search$searchUser$account(
    this._instance,
    this._then,
  );

  final Query$Search$searchUser$account _instance;

  final TRes Function(Query$Search$searchUser$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$searchUser$account(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$searchUser$account<TRes>
    implements CopyWith$Query$Search$searchUser$account<TRes> {
  _CopyWithStubImpl$Query$Search$searchUser$account(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchPost {
  factory Variables$Query$SearchPost({required Input$GetPostDto data}) =>
      Variables$Query$SearchPost._({
        r'data': data,
      });

  Variables$Query$SearchPost._(this._$data);

  factory Variables$Query$SearchPost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$SearchPost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchPost<Variables$Query$SearchPost>
      get copyWith => CopyWith$Variables$Query$SearchPost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchPost) ||
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

abstract class CopyWith$Variables$Query$SearchPost<TRes> {
  factory CopyWith$Variables$Query$SearchPost(
    Variables$Query$SearchPost instance,
    TRes Function(Variables$Query$SearchPost) then,
  ) = _CopyWithImpl$Variables$Query$SearchPost;

  factory CopyWith$Variables$Query$SearchPost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchPost;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$SearchPost<TRes>
    implements CopyWith$Variables$Query$SearchPost<TRes> {
  _CopyWithImpl$Variables$Query$SearchPost(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchPost _instance;

  final TRes Function(Variables$Query$SearchPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Variables$Query$SearchPost._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchPost<TRes>
    implements CopyWith$Variables$Query$SearchPost<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchPost(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$SearchPost {
  Query$SearchPost({
    required this.searchPost,
    this.$__typename = 'Query',
  });

  factory Query$SearchPost.fromJson(Map<String, dynamic> json) {
    final l$searchPost = json['searchPost'];
    final l$$__typename = json['__typename'];
    return Query$SearchPost(
      searchPost: (l$searchPost as List<dynamic>)
          .map((e) =>
              Query$SearchPost$searchPost.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchPost$searchPost> searchPost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchPost = searchPost;
    _resultData['searchPost'] = l$searchPost.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchPost = searchPost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchPost.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchPost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchPost = searchPost;
    final lOther$searchPost = other.searchPost;
    if (l$searchPost.length != lOther$searchPost.length) {
      return false;
    }
    for (int i = 0; i < l$searchPost.length; i++) {
      final l$searchPost$entry = l$searchPost[i];
      final lOther$searchPost$entry = lOther$searchPost[i];
      if (l$searchPost$entry != lOther$searchPost$entry) {
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

extension UtilityExtension$Query$SearchPost on Query$SearchPost {
  CopyWith$Query$SearchPost<Query$SearchPost> get copyWith =>
      CopyWith$Query$SearchPost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchPost<TRes> {
  factory CopyWith$Query$SearchPost(
    Query$SearchPost instance,
    TRes Function(Query$SearchPost) then,
  ) = _CopyWithImpl$Query$SearchPost;

  factory CopyWith$Query$SearchPost.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchPost;

  TRes call({
    List<Query$SearchPost$searchPost>? searchPost,
    String? $__typename,
  });
  TRes searchPost(
      Iterable<Query$SearchPost$searchPost> Function(
              Iterable<
                  CopyWith$Query$SearchPost$searchPost<
                      Query$SearchPost$searchPost>>)
          _fn);
}

class _CopyWithImpl$Query$SearchPost<TRes>
    implements CopyWith$Query$SearchPost<TRes> {
  _CopyWithImpl$Query$SearchPost(
    this._instance,
    this._then,
  );

  final Query$SearchPost _instance;

  final TRes Function(Query$SearchPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchPost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchPost(
        searchPost: searchPost == _undefined || searchPost == null
            ? _instance.searchPost
            : (searchPost as List<Query$SearchPost$searchPost>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchPost(
          Iterable<Query$SearchPost$searchPost> Function(
                  Iterable<
                      CopyWith$Query$SearchPost$searchPost<
                          Query$SearchPost$searchPost>>)
              _fn) =>
      call(
          searchPost: _fn(_instance.searchPost
              .map((e) => CopyWith$Query$SearchPost$searchPost(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SearchPost<TRes>
    implements CopyWith$Query$SearchPost<TRes> {
  _CopyWithStubImpl$Query$SearchPost(this._res);

  TRes _res;

  call({
    List<Query$SearchPost$searchPost>? searchPost,
    String? $__typename,
  }) =>
      _res;

  searchPost(_fn) => _res;
}

const documentNodeQuerySearchPost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchPost'),
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
        name: NameNode(value: 'searchPost'),
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
            name: NameNode(value: 'ingredients'),
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
Query$SearchPost _parserFn$Query$SearchPost(Map<String, dynamic> data) =>
    Query$SearchPost.fromJson(data);
typedef OnQueryComplete$Query$SearchPost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchPost?,
);

class Options$Query$SearchPost extends graphql.QueryOptions<Query$SearchPost> {
  Options$Query$SearchPost({
    String? operationName,
    required Variables$Query$SearchPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchPost? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchPost? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchPost(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchPost,
          parserFn: _parserFn$Query$SearchPost,
        );

  final OnQueryComplete$Query$SearchPost? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchPost
    extends graphql.WatchQueryOptions<Query$SearchPost> {
  WatchOptions$Query$SearchPost({
    String? operationName,
    required Variables$Query$SearchPost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchPost? typedOptimisticResult,
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
          document: documentNodeQuerySearchPost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchPost,
        );
}

class FetchMoreOptions$Query$SearchPost extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchPost({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchPost variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchPost,
        );
}

extension ClientExtension$Query$SearchPost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchPost>> query$SearchPost(
          Options$Query$SearchPost options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchPost> watchQuery$SearchPost(
          WatchOptions$Query$SearchPost options) =>
      this.watchQuery(options);
  void writeQuery$SearchPost({
    required Query$SearchPost data,
    required Variables$Query$SearchPost variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchPost),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchPost? readQuery$SearchPost({
    required Variables$Query$SearchPost variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchPost),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchPost.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchPost> useQuery$SearchPost(
        Options$Query$SearchPost options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SearchPost> useWatchQuery$SearchPost(
        WatchOptions$Query$SearchPost options) =>
    graphql_flutter.useWatchQuery(options);

class Query$SearchPost$Widget extends graphql_flutter.Query<Query$SearchPost> {
  Query$SearchPost$Widget({
    widgets.Key? key,
    required Options$Query$SearchPost options,
    required graphql_flutter.QueryBuilder<Query$SearchPost> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SearchPost$searchPost {
  Query$SearchPost$searchPost({
    required this.id,
    required this.name,
    required this.image,
    required this.nop_eat,
    required this.prepare_time,
    required this.ingredients,
    this.$__typename = 'Post',
  });

  factory Query$SearchPost$searchPost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$nop_eat = json['nop_eat'];
    final l$prepare_time = json['prepare_time'];
    final l$ingredients = json['ingredients'];
    final l$$__typename = json['__typename'];
    return Query$SearchPost$searchPost(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String),
      nop_eat: (l$nop_eat as num).toDouble(),
      prepare_time: (l$prepare_time as String),
      ingredients:
          (l$ingredients as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String image;

  final double nop_eat;

  final String prepare_time;

  final List<String> ingredients;

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
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients.map((e) => e).toList();
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
    final l$ingredients = ingredients;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      Object.hashAll(l$ingredients.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchPost$searchPost) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchPost$searchPost
    on Query$SearchPost$searchPost {
  CopyWith$Query$SearchPost$searchPost<Query$SearchPost$searchPost>
      get copyWith => CopyWith$Query$SearchPost$searchPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchPost$searchPost<TRes> {
  factory CopyWith$Query$SearchPost$searchPost(
    Query$SearchPost$searchPost instance,
    TRes Function(Query$SearchPost$searchPost) then,
  ) = _CopyWithImpl$Query$SearchPost$searchPost;

  factory CopyWith$Query$SearchPost$searchPost.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchPost$searchPost;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    List<String>? ingredients,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchPost$searchPost<TRes>
    implements CopyWith$Query$SearchPost$searchPost<TRes> {
  _CopyWithImpl$Query$SearchPost$searchPost(
    this._instance,
    this._then,
  );

  final Query$SearchPost$searchPost _instance;

  final TRes Function(Query$SearchPost$searchPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? ingredients = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchPost$searchPost(
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
        ingredients: ingredients == _undefined || ingredients == null
            ? _instance.ingredients
            : (ingredients as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchPost$searchPost<TRes>
    implements CopyWith$Query$SearchPost$searchPost<TRes> {
  _CopyWithStubImpl$Query$SearchPost$searchPost(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    List<String>? ingredients,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchUser {
  factory Variables$Query$SearchUser({required Input$GetPostDto data}) =>
      Variables$Query$SearchUser._({
        r'data': data,
      });

  Variables$Query$SearchUser._(this._$data);

  factory Variables$Query$SearchUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$GetPostDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Query$SearchUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPostDto get data => (_$data['data'] as Input$GetPostDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchUser<Variables$Query$SearchUser>
      get copyWith => CopyWith$Variables$Query$SearchUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchUser) ||
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

abstract class CopyWith$Variables$Query$SearchUser<TRes> {
  factory CopyWith$Variables$Query$SearchUser(
    Variables$Query$SearchUser instance,
    TRes Function(Variables$Query$SearchUser) then,
  ) = _CopyWithImpl$Variables$Query$SearchUser;

  factory CopyWith$Variables$Query$SearchUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchUser;

  TRes call({Input$GetPostDto? data});
}

class _CopyWithImpl$Variables$Query$SearchUser<TRes>
    implements CopyWith$Variables$Query$SearchUser<TRes> {
  _CopyWithImpl$Variables$Query$SearchUser(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchUser _instance;

  final TRes Function(Variables$Query$SearchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Variables$Query$SearchUser._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$GetPostDto),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchUser<TRes>
    implements CopyWith$Variables$Query$SearchUser<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchUser(this._res);

  TRes _res;

  call({Input$GetPostDto? data}) => _res;
}

class Query$SearchUser {
  Query$SearchUser({
    required this.searchUser,
    this.$__typename = 'Query',
  });

  factory Query$SearchUser.fromJson(Map<String, dynamic> json) {
    final l$searchUser = json['searchUser'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser(
      searchUser: (l$searchUser as List<dynamic>)
          .map((e) =>
              Query$SearchUser$searchUser.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchUser$searchUser> searchUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchUser = searchUser;
    _resultData['searchUser'] = l$searchUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchUser = searchUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchUser = searchUser;
    final lOther$searchUser = other.searchUser;
    if (l$searchUser.length != lOther$searchUser.length) {
      return false;
    }
    for (int i = 0; i < l$searchUser.length; i++) {
      final l$searchUser$entry = l$searchUser[i];
      final lOther$searchUser$entry = lOther$searchUser[i];
      if (l$searchUser$entry != lOther$searchUser$entry) {
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

extension UtilityExtension$Query$SearchUser on Query$SearchUser {
  CopyWith$Query$SearchUser<Query$SearchUser> get copyWith =>
      CopyWith$Query$SearchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchUser<TRes> {
  factory CopyWith$Query$SearchUser(
    Query$SearchUser instance,
    TRes Function(Query$SearchUser) then,
  ) = _CopyWithImpl$Query$SearchUser;

  factory CopyWith$Query$SearchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser;

  TRes call({
    List<Query$SearchUser$searchUser>? searchUser,
    String? $__typename,
  });
  TRes searchUser(
      Iterable<Query$SearchUser$searchUser> Function(
              Iterable<
                  CopyWith$Query$SearchUser$searchUser<
                      Query$SearchUser$searchUser>>)
          _fn);
}

class _CopyWithImpl$Query$SearchUser<TRes>
    implements CopyWith$Query$SearchUser<TRes> {
  _CopyWithImpl$Query$SearchUser(
    this._instance,
    this._then,
  );

  final Query$SearchUser _instance;

  final TRes Function(Query$SearchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser(
        searchUser: searchUser == _undefined || searchUser == null
            ? _instance.searchUser
            : (searchUser as List<Query$SearchUser$searchUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchUser(
          Iterable<Query$SearchUser$searchUser> Function(
                  Iterable<
                      CopyWith$Query$SearchUser$searchUser<
                          Query$SearchUser$searchUser>>)
              _fn) =>
      call(
          searchUser: _fn(_instance.searchUser
              .map((e) => CopyWith$Query$SearchUser$searchUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SearchUser<TRes>
    implements CopyWith$Query$SearchUser<TRes> {
  _CopyWithStubImpl$Query$SearchUser(this._res);

  TRes _res;

  call({
    List<Query$SearchUser$searchUser>? searchUser,
    String? $__typename,
  }) =>
      _res;

  searchUser(_fn) => _res;
}

const documentNodeQuerySearchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchUser'),
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
        name: NameNode(value: 'searchUser'),
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'living'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'username'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SearchUser _parserFn$Query$SearchUser(Map<String, dynamic> data) =>
    Query$SearchUser.fromJson(data);
typedef OnQueryComplete$Query$SearchUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchUser?,
);

class Options$Query$SearchUser extends graphql.QueryOptions<Query$SearchUser> {
  Options$Query$SearchUser({
    String? operationName,
    required Variables$Query$SearchUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchUser? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchUser(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchUser,
          parserFn: _parserFn$Query$SearchUser,
        );

  final OnQueryComplete$Query$SearchUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchUser
    extends graphql.WatchQueryOptions<Query$SearchUser> {
  WatchOptions$Query$SearchUser({
    String? operationName,
    required Variables$Query$SearchUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUser? typedOptimisticResult,
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
          document: documentNodeQuerySearchUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchUser,
        );
}

class FetchMoreOptions$Query$SearchUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SearchUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearchUser,
        );
}

extension ClientExtension$Query$SearchUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchUser>> query$SearchUser(
          Options$Query$SearchUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchUser> watchQuery$SearchUser(
          WatchOptions$Query$SearchUser options) =>
      this.watchQuery(options);
  void writeQuery$SearchUser({
    required Query$SearchUser data,
    required Variables$Query$SearchUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchUser? readQuery$SearchUser({
    required Variables$Query$SearchUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchUser> useQuery$SearchUser(
        Options$Query$SearchUser options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SearchUser> useWatchQuery$SearchUser(
        WatchOptions$Query$SearchUser options) =>
    graphql_flutter.useWatchQuery(options);

class Query$SearchUser$Widget extends graphql_flutter.Query<Query$SearchUser> {
  Query$SearchUser$Widget({
    widgets.Key? key,
    required Options$Query$SearchUser options,
    required graphql_flutter.QueryBuilder<Query$SearchUser> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SearchUser$searchUser {
  Query$SearchUser$searchUser({
    required this.id,
    required this.name,
    required this.gender,
    required this.living,
    required this.bio,
    required this.account,
    required this.avatar,
    this.$__typename = 'User',
  });

  factory Query$SearchUser$searchUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$account = json['account'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser$searchUser(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      account: Query$SearchUser$searchUser$account.fromJson(
          (l$account as Map<String, dynamic>)),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double gender;

  final String living;

  final String bio;

  final Query$SearchUser$searchUser$account account;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$living = living;
    final l$bio = bio;
    final l$account = account;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$living,
      l$bio,
      l$account,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchUser$searchUser) ||
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$living = living;
    final lOther$living = other.living;
    if (l$living != lOther$living) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$SearchUser$searchUser
    on Query$SearchUser$searchUser {
  CopyWith$Query$SearchUser$searchUser<Query$SearchUser$searchUser>
      get copyWith => CopyWith$Query$SearchUser$searchUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchUser$searchUser<TRes> {
  factory CopyWith$Query$SearchUser$searchUser(
    Query$SearchUser$searchUser instance,
    TRes Function(Query$SearchUser$searchUser) then,
  ) = _CopyWithImpl$Query$SearchUser$searchUser;

  factory CopyWith$Query$SearchUser$searchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser$searchUser;

  TRes call({
    String? id,
    String? name,
    double? gender,
    String? living,
    String? bio,
    Query$SearchUser$searchUser$account? account,
    String? avatar,
    String? $__typename,
  });
  CopyWith$Query$SearchUser$searchUser$account<TRes> get account;
}

class _CopyWithImpl$Query$SearchUser$searchUser<TRes>
    implements CopyWith$Query$SearchUser$searchUser<TRes> {
  _CopyWithImpl$Query$SearchUser$searchUser(
    this._instance,
    this._then,
  );

  final Query$SearchUser$searchUser _instance;

  final TRes Function(Query$SearchUser$searchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? account = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser$searchUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$SearchUser$searchUser$account),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchUser$searchUser$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$SearchUser$searchUser$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$SearchUser$searchUser<TRes>
    implements CopyWith$Query$SearchUser$searchUser<TRes> {
  _CopyWithStubImpl$Query$SearchUser$searchUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    String? living,
    String? bio,
    Query$SearchUser$searchUser$account? account,
    String? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchUser$searchUser$account<TRes> get account =>
      CopyWith$Query$SearchUser$searchUser$account.stub(_res);
}

class Query$SearchUser$searchUser$account {
  Query$SearchUser$searchUser$account({
    required this.username,
    this.$__typename = 'Account',
  });

  factory Query$SearchUser$searchUser$account.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$SearchUser$searchUser$account(
      username: (l$username as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchUser$searchUser$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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

extension UtilityExtension$Query$SearchUser$searchUser$account
    on Query$SearchUser$searchUser$account {
  CopyWith$Query$SearchUser$searchUser$account<
          Query$SearchUser$searchUser$account>
      get copyWith => CopyWith$Query$SearchUser$searchUser$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchUser$searchUser$account<TRes> {
  factory CopyWith$Query$SearchUser$searchUser$account(
    Query$SearchUser$searchUser$account instance,
    TRes Function(Query$SearchUser$searchUser$account) then,
  ) = _CopyWithImpl$Query$SearchUser$searchUser$account;

  factory CopyWith$Query$SearchUser$searchUser$account.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUser$searchUser$account;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchUser$searchUser$account<TRes>
    implements CopyWith$Query$SearchUser$searchUser$account<TRes> {
  _CopyWithImpl$Query$SearchUser$searchUser$account(
    this._instance,
    this._then,
  );

  final Query$SearchUser$searchUser$account _instance;

  final TRes Function(Query$SearchUser$searchUser$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUser$searchUser$account(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchUser$searchUser$account<TRes>
    implements CopyWith$Query$SearchUser$searchUser$account<TRes> {
  _CopyWithStubImpl$Query$SearchUser$searchUser$account(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetHistorySearchOfUser {
  factory Variables$Query$GetHistorySearchOfUser({required String id}) =>
      Variables$Query$GetHistorySearchOfUser._({
        r'id': id,
      });

  Variables$Query$GetHistorySearchOfUser._(this._$data);

  factory Variables$Query$GetHistorySearchOfUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetHistorySearchOfUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetHistorySearchOfUser<
          Variables$Query$GetHistorySearchOfUser>
      get copyWith => CopyWith$Variables$Query$GetHistorySearchOfUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetHistorySearchOfUser) ||
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

abstract class CopyWith$Variables$Query$GetHistorySearchOfUser<TRes> {
  factory CopyWith$Variables$Query$GetHistorySearchOfUser(
    Variables$Query$GetHistorySearchOfUser instance,
    TRes Function(Variables$Query$GetHistorySearchOfUser) then,
  ) = _CopyWithImpl$Variables$Query$GetHistorySearchOfUser;

  factory CopyWith$Variables$Query$GetHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetHistorySearchOfUser;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Query$GetHistorySearchOfUser<TRes> {
  _CopyWithImpl$Variables$Query$GetHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Variables$Query$GetHistorySearchOfUser _instance;

  final TRes Function(Variables$Query$GetHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetHistorySearchOfUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Query$GetHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Variables$Query$GetHistorySearchOfUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetHistorySearchOfUser {
  Query$GetHistorySearchOfUser({
    required this.getHistorySearchOfUser,
    this.$__typename = 'Query',
  });

  factory Query$GetHistorySearchOfUser.fromJson(Map<String, dynamic> json) {
    final l$getHistorySearchOfUser = json['getHistorySearchOfUser'];
    final l$$__typename = json['__typename'];
    return Query$GetHistorySearchOfUser(
      getHistorySearchOfUser:
          Query$GetHistorySearchOfUser$getHistorySearchOfUser.fromJson(
              (l$getHistorySearchOfUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetHistorySearchOfUser$getHistorySearchOfUser
      getHistorySearchOfUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getHistorySearchOfUser = getHistorySearchOfUser;
    _resultData['getHistorySearchOfUser'] = l$getHistorySearchOfUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getHistorySearchOfUser = getHistorySearchOfUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getHistorySearchOfUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getHistorySearchOfUser = getHistorySearchOfUser;
    final lOther$getHistorySearchOfUser = other.getHistorySearchOfUser;
    if (l$getHistorySearchOfUser != lOther$getHistorySearchOfUser) {
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

extension UtilityExtension$Query$GetHistorySearchOfUser
    on Query$GetHistorySearchOfUser {
  CopyWith$Query$GetHistorySearchOfUser<Query$GetHistorySearchOfUser>
      get copyWith => CopyWith$Query$GetHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistorySearchOfUser<TRes> {
  factory CopyWith$Query$GetHistorySearchOfUser(
    Query$GetHistorySearchOfUser instance,
    TRes Function(Query$GetHistorySearchOfUser) then,
  ) = _CopyWithImpl$Query$GetHistorySearchOfUser;

  factory CopyWith$Query$GetHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistorySearchOfUser;

  TRes call({
    Query$GetHistorySearchOfUser$getHistorySearchOfUser? getHistorySearchOfUser,
    String? $__typename,
  });
  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes>
      get getHistorySearchOfUser;
}

class _CopyWithImpl$Query$GetHistorySearchOfUser<TRes>
    implements CopyWith$Query$GetHistorySearchOfUser<TRes> {
  _CopyWithImpl$Query$GetHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Query$GetHistorySearchOfUser _instance;

  final TRes Function(Query$GetHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getHistorySearchOfUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetHistorySearchOfUser(
        getHistorySearchOfUser: getHistorySearchOfUser == _undefined ||
                getHistorySearchOfUser == null
            ? _instance.getHistorySearchOfUser
            : (getHistorySearchOfUser
                as Query$GetHistorySearchOfUser$getHistorySearchOfUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes>
      get getHistorySearchOfUser {
    final local$getHistorySearchOfUser = _instance.getHistorySearchOfUser;
    return CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser(
        local$getHistorySearchOfUser, (e) => call(getHistorySearchOfUser: e));
  }
}

class _CopyWithStubImpl$Query$GetHistorySearchOfUser<TRes>
    implements CopyWith$Query$GetHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Query$GetHistorySearchOfUser(this._res);

  TRes _res;

  call({
    Query$GetHistorySearchOfUser$getHistorySearchOfUser? getHistorySearchOfUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes>
      get getHistorySearchOfUser =>
          CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser.stub(
              _res);
}

const documentNodeQueryGetHistorySearchOfUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetHistorySearchOfUser'),
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
        name: NameNode(value: 'getHistorySearchOfUser'),
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
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'histories'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'data'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date_time'),
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
Query$GetHistorySearchOfUser _parserFn$Query$GetHistorySearchOfUser(
        Map<String, dynamic> data) =>
    Query$GetHistorySearchOfUser.fromJson(data);
typedef OnQueryComplete$Query$GetHistorySearchOfUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetHistorySearchOfUser?,
);

class Options$Query$GetHistorySearchOfUser
    extends graphql.QueryOptions<Query$GetHistorySearchOfUser> {
  Options$Query$GetHistorySearchOfUser({
    String? operationName,
    required Variables$Query$GetHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetHistorySearchOfUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetHistorySearchOfUser? onComplete,
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
                        : _parserFn$Query$GetHistorySearchOfUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetHistorySearchOfUser,
          parserFn: _parserFn$Query$GetHistorySearchOfUser,
        );

  final OnQueryComplete$Query$GetHistorySearchOfUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetHistorySearchOfUser
    extends graphql.WatchQueryOptions<Query$GetHistorySearchOfUser> {
  WatchOptions$Query$GetHistorySearchOfUser({
    String? operationName,
    required Variables$Query$GetHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetHistorySearchOfUser? typedOptimisticResult,
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
          document: documentNodeQueryGetHistorySearchOfUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetHistorySearchOfUser,
        );
}

class FetchMoreOptions$Query$GetHistorySearchOfUser
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetHistorySearchOfUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetHistorySearchOfUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetHistorySearchOfUser,
        );
}

extension ClientExtension$Query$GetHistorySearchOfUser
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetHistorySearchOfUser>>
      query$GetHistorySearchOfUser(
              Options$Query$GetHistorySearchOfUser options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetHistorySearchOfUser>
      watchQuery$GetHistorySearchOfUser(
              WatchOptions$Query$GetHistorySearchOfUser options) =>
          this.watchQuery(options);
  void writeQuery$GetHistorySearchOfUser({
    required Query$GetHistorySearchOfUser data,
    required Variables$Query$GetHistorySearchOfUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetHistorySearchOfUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetHistorySearchOfUser? readQuery$GetHistorySearchOfUser({
    required Variables$Query$GetHistorySearchOfUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetHistorySearchOfUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetHistorySearchOfUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetHistorySearchOfUser>
    useQuery$GetHistorySearchOfUser(
            Options$Query$GetHistorySearchOfUser options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetHistorySearchOfUser>
    useWatchQuery$GetHistorySearchOfUser(
            WatchOptions$Query$GetHistorySearchOfUser options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetHistorySearchOfUser$Widget
    extends graphql_flutter.Query<Query$GetHistorySearchOfUser> {
  Query$GetHistorySearchOfUser$Widget({
    widgets.Key? key,
    required Options$Query$GetHistorySearchOfUser options,
    required graphql_flutter.QueryBuilder<Query$GetHistorySearchOfUser> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetHistorySearchOfUser$getHistorySearchOfUser {
  Query$GetHistorySearchOfUser$getHistorySearchOfUser({
    required this.user_id,
    required this.histories,
    this.$__typename = 'HistorySearch',
  });

  factory Query$GetHistorySearchOfUser$getHistorySearchOfUser.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$histories = json['histories'];
    final l$$__typename = json['__typename'];
    return Query$GetHistorySearchOfUser$getHistorySearchOfUser(
      user_id: (l$user_id as String),
      histories: (l$histories as List<dynamic>)
          .map((e) =>
              Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final List<Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>
      histories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$histories = histories;
    _resultData['histories'] = l$histories.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$histories = histories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      Object.hashAll(l$histories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistorySearchOfUser$getHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$histories = histories;
    final lOther$histories = other.histories;
    if (l$histories.length != lOther$histories.length) {
      return false;
    }
    for (int i = 0; i < l$histories.length; i++) {
      final l$histories$entry = l$histories[i];
      final lOther$histories$entry = lOther$histories[i];
      if (l$histories$entry != lOther$histories$entry) {
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

extension UtilityExtension$Query$GetHistorySearchOfUser$getHistorySearchOfUser
    on Query$GetHistorySearchOfUser$getHistorySearchOfUser {
  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<
          Query$GetHistorySearchOfUser$getHistorySearchOfUser>
      get copyWith =>
          CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<
    TRes> {
  factory CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser(
    Query$GetHistorySearchOfUser$getHistorySearchOfUser instance,
    TRes Function(Query$GetHistorySearchOfUser$getHistorySearchOfUser) then,
  ) = _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser;

  factory CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser;

  TRes call({
    String? user_id,
    List<Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  });
  TRes histories(
      Iterable<Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories> Function(
              Iterable<
                  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
                      Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>>)
          _fn);
}

class _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes>
    implements
        CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes> {
  _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Query$GetHistorySearchOfUser$getHistorySearchOfUser _instance;

  final TRes Function(Query$GetHistorySearchOfUser$getHistorySearchOfUser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? histories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetHistorySearchOfUser$getHistorySearchOfUser(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        histories: histories == _undefined || histories == null
            ? _instance.histories
            : (histories as List<
                Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes histories(
          Iterable<Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories> Function(
                  Iterable<
                      CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
                          Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>>)
              _fn) =>
      call(
          histories: _fn(_instance.histories.map((e) =>
              CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser<
        TRes>
    implements
        CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser(
      this._res);

  TRes _res;

  call({
    String? user_id,
    List<Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  }) =>
      _res;

  histories(_fn) => _res;
}

class Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories {
  Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories({
    required this.id,
    required this.data,
    required this.date_time,
    this.$__typename = 'History',
  });

  factory Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$data = json['data'];
    final l$date_time = json['date_time'];
    final l$$__typename = json['__typename'];
    return Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
      id: (l$id as String),
      data: (l$data as String),
      date_time: (l$date_time as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String data;

  final String date_time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$date_time = date_time;
    _resultData['date_time'] = l$date_time;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$data = data;
    final l$date_time = date_time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$data,
      l$date_time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$date_time = date_time;
    final lOther$date_time = other.date_time;
    if (l$date_time != lOther$date_time) {
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

extension UtilityExtension$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories
    on Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories {
  CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
          Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories>
      get copyWith =>
          CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
    TRes> {
  factory CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
    Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories instance,
    TRes Function(Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories)
        then,
  ) = _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories;

  factory CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories;

  TRes call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
            TRes> {
  _CopyWithImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
    this._instance,
    this._then,
  );

  final Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories _instance;

  final TRes Function(
      Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
    Object? date_time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        data: data == _undefined || data == null
            ? _instance.data
            : (data as String),
        date_time: date_time == _undefined || date_time == null
            ? _instance.date_time
            : (date_time as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories<
            TRes> {
  _CopyWithStubImpl$Query$GetHistorySearchOfUser$getHistorySearchOfUser$histories(
      this._res);

  TRes _res;

  call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AddHistorySearchOfUser {
  factory Variables$Mutation$AddHistorySearchOfUser({
    required String id,
    required String data,
  }) =>
      Variables$Mutation$AddHistorySearchOfUser._({
        r'id': id,
        r'data': data,
      });

  Variables$Mutation$AddHistorySearchOfUser._(this._$data);

  factory Variables$Mutation$AddHistorySearchOfUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    return Variables$Mutation$AddHistorySearchOfUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get data => (_$data['data'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$data = data;
    result$data['data'] = l$data;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddHistorySearchOfUser<
          Variables$Mutation$AddHistorySearchOfUser>
      get copyWith => CopyWith$Variables$Mutation$AddHistorySearchOfUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AddHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$data = data;
    return Object.hashAll([
      l$id,
      l$data,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddHistorySearchOfUser<TRes> {
  factory CopyWith$Variables$Mutation$AddHistorySearchOfUser(
    Variables$Mutation$AddHistorySearchOfUser instance,
    TRes Function(Variables$Mutation$AddHistorySearchOfUser) then,
  ) = _CopyWithImpl$Variables$Mutation$AddHistorySearchOfUser;

  factory CopyWith$Variables$Mutation$AddHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddHistorySearchOfUser;

  TRes call({
    String? id,
    String? data,
  });
}

class _CopyWithImpl$Variables$Mutation$AddHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Mutation$AddHistorySearchOfUser<TRes> {
  _CopyWithImpl$Variables$Mutation$AddHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddHistorySearchOfUser _instance;

  final TRes Function(Variables$Mutation$AddHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Variables$Mutation$AddHistorySearchOfUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (data != _undefined && data != null) 'data': (data as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Mutation$AddHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddHistorySearchOfUser(this._res);

  TRes _res;

  call({
    String? id,
    String? data,
  }) =>
      _res;
}

class Mutation$AddHistorySearchOfUser {
  Mutation$AddHistorySearchOfUser({
    required this.addHistorySearchOfUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddHistorySearchOfUser.fromJson(Map<String, dynamic> json) {
    final l$addHistorySearchOfUser = json['addHistorySearchOfUser'];
    final l$$__typename = json['__typename'];
    return Mutation$AddHistorySearchOfUser(
      addHistorySearchOfUser:
          Mutation$AddHistorySearchOfUser$addHistorySearchOfUser.fromJson(
              (l$addHistorySearchOfUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddHistorySearchOfUser$addHistorySearchOfUser
      addHistorySearchOfUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addHistorySearchOfUser = addHistorySearchOfUser;
    _resultData['addHistorySearchOfUser'] = l$addHistorySearchOfUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addHistorySearchOfUser = addHistorySearchOfUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addHistorySearchOfUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AddHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addHistorySearchOfUser = addHistorySearchOfUser;
    final lOther$addHistorySearchOfUser = other.addHistorySearchOfUser;
    if (l$addHistorySearchOfUser != lOther$addHistorySearchOfUser) {
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

extension UtilityExtension$Mutation$AddHistorySearchOfUser
    on Mutation$AddHistorySearchOfUser {
  CopyWith$Mutation$AddHistorySearchOfUser<Mutation$AddHistorySearchOfUser>
      get copyWith => CopyWith$Mutation$AddHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddHistorySearchOfUser<TRes> {
  factory CopyWith$Mutation$AddHistorySearchOfUser(
    Mutation$AddHistorySearchOfUser instance,
    TRes Function(Mutation$AddHistorySearchOfUser) then,
  ) = _CopyWithImpl$Mutation$AddHistorySearchOfUser;

  factory CopyWith$Mutation$AddHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddHistorySearchOfUser;

  TRes call({
    Mutation$AddHistorySearchOfUser$addHistorySearchOfUser?
        addHistorySearchOfUser,
    String? $__typename,
  });
  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes>
      get addHistorySearchOfUser;
}

class _CopyWithImpl$Mutation$AddHistorySearchOfUser<TRes>
    implements CopyWith$Mutation$AddHistorySearchOfUser<TRes> {
  _CopyWithImpl$Mutation$AddHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Mutation$AddHistorySearchOfUser _instance;

  final TRes Function(Mutation$AddHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addHistorySearchOfUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddHistorySearchOfUser(
        addHistorySearchOfUser: addHistorySearchOfUser == _undefined ||
                addHistorySearchOfUser == null
            ? _instance.addHistorySearchOfUser
            : (addHistorySearchOfUser
                as Mutation$AddHistorySearchOfUser$addHistorySearchOfUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes>
      get addHistorySearchOfUser {
    final local$addHistorySearchOfUser = _instance.addHistorySearchOfUser;
    return CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
        local$addHistorySearchOfUser, (e) => call(addHistorySearchOfUser: e));
  }
}

class _CopyWithStubImpl$Mutation$AddHistorySearchOfUser<TRes>
    implements CopyWith$Mutation$AddHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Mutation$AddHistorySearchOfUser(this._res);

  TRes _res;

  call({
    Mutation$AddHistorySearchOfUser$addHistorySearchOfUser?
        addHistorySearchOfUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes>
      get addHistorySearchOfUser =>
          CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser.stub(
              _res);
}

const documentNodeMutationAddHistorySearchOfUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddHistorySearchOfUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addHistorySearchOfUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
        ],
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
            name: NameNode(value: 'histories'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'data'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date_time'),
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
Mutation$AddHistorySearchOfUser _parserFn$Mutation$AddHistorySearchOfUser(
        Map<String, dynamic> data) =>
    Mutation$AddHistorySearchOfUser.fromJson(data);
typedef OnMutationCompleted$Mutation$AddHistorySearchOfUser = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$AddHistorySearchOfUser?,
);

class Options$Mutation$AddHistorySearchOfUser
    extends graphql.MutationOptions<Mutation$AddHistorySearchOfUser> {
  Options$Mutation$AddHistorySearchOfUser({
    String? operationName,
    required Variables$Mutation$AddHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddHistorySearchOfUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddHistorySearchOfUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddHistorySearchOfUser>? update,
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
                        : _parserFn$Mutation$AddHistorySearchOfUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddHistorySearchOfUser,
          parserFn: _parserFn$Mutation$AddHistorySearchOfUser,
        );

  final OnMutationCompleted$Mutation$AddHistorySearchOfUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddHistorySearchOfUser
    extends graphql.WatchQueryOptions<Mutation$AddHistorySearchOfUser> {
  WatchOptions$Mutation$AddHistorySearchOfUser({
    String? operationName,
    required Variables$Mutation$AddHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddHistorySearchOfUser? typedOptimisticResult,
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
          document: documentNodeMutationAddHistorySearchOfUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddHistorySearchOfUser,
        );
}

extension ClientExtension$Mutation$AddHistorySearchOfUser
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddHistorySearchOfUser>>
      mutate$AddHistorySearchOfUser(
              Options$Mutation$AddHistorySearchOfUser options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddHistorySearchOfUser>
      watchMutation$AddHistorySearchOfUser(
              WatchOptions$Mutation$AddHistorySearchOfUser options) =>
          this.watchMutation(options);
}

class Mutation$AddHistorySearchOfUser$HookResult {
  Mutation$AddHistorySearchOfUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddHistorySearchOfUser runMutation;

  final graphql.QueryResult<Mutation$AddHistorySearchOfUser> result;
}

Mutation$AddHistorySearchOfUser$HookResult useMutation$AddHistorySearchOfUser(
    [WidgetOptions$Mutation$AddHistorySearchOfUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddHistorySearchOfUser());
  return Mutation$AddHistorySearchOfUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddHistorySearchOfUser>
    useWatchMutation$AddHistorySearchOfUser(
            WatchOptions$Mutation$AddHistorySearchOfUser options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddHistorySearchOfUser
    extends graphql.MutationOptions<Mutation$AddHistorySearchOfUser> {
  WidgetOptions$Mutation$AddHistorySearchOfUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddHistorySearchOfUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddHistorySearchOfUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddHistorySearchOfUser>? update,
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
                        : _parserFn$Mutation$AddHistorySearchOfUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddHistorySearchOfUser,
          parserFn: _parserFn$Mutation$AddHistorySearchOfUser,
        );

  final OnMutationCompleted$Mutation$AddHistorySearchOfUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddHistorySearchOfUser
    = graphql.MultiSourceResult<Mutation$AddHistorySearchOfUser> Function(
  Variables$Mutation$AddHistorySearchOfUser, {
  Object? optimisticResult,
  Mutation$AddHistorySearchOfUser? typedOptimisticResult,
});
typedef Builder$Mutation$AddHistorySearchOfUser = widgets.Widget Function(
  RunMutation$Mutation$AddHistorySearchOfUser,
  graphql.QueryResult<Mutation$AddHistorySearchOfUser>?,
);

class Mutation$AddHistorySearchOfUser$Widget
    extends graphql_flutter.Mutation<Mutation$AddHistorySearchOfUser> {
  Mutation$AddHistorySearchOfUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddHistorySearchOfUser? options,
    required Builder$Mutation$AddHistorySearchOfUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddHistorySearchOfUser(),
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

class Mutation$AddHistorySearchOfUser$addHistorySearchOfUser {
  Mutation$AddHistorySearchOfUser$addHistorySearchOfUser({
    required this.user_id,
    required this.histories,
    this.$__typename = 'HistorySearch',
  });

  factory Mutation$AddHistorySearchOfUser$addHistorySearchOfUser.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$histories = json['histories'];
    final l$$__typename = json['__typename'];
    return Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
      user_id: (l$user_id as String),
      histories: (l$histories as List<dynamic>)
          .map((e) =>
              Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final List<Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>
      histories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$histories = histories;
    _resultData['histories'] = l$histories.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$histories = histories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      Object.hashAll(l$histories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AddHistorySearchOfUser$addHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$histories = histories;
    final lOther$histories = other.histories;
    if (l$histories.length != lOther$histories.length) {
      return false;
    }
    for (int i = 0; i < l$histories.length; i++) {
      final l$histories$entry = l$histories[i];
      final lOther$histories$entry = lOther$histories[i];
      if (l$histories$entry != lOther$histories$entry) {
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

extension UtilityExtension$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser
    on Mutation$AddHistorySearchOfUser$addHistorySearchOfUser {
  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<
          Mutation$AddHistorySearchOfUser$addHistorySearchOfUser>
      get copyWith =>
          CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<
    TRes> {
  factory CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
    Mutation$AddHistorySearchOfUser$addHistorySearchOfUser instance,
    TRes Function(Mutation$AddHistorySearchOfUser$addHistorySearchOfUser) then,
  ) = _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser;

  factory CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser;

  TRes call({
    String? user_id,
    List<Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  });
  TRes histories(
      Iterable<Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories> Function(
              Iterable<
                  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
                      Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes>
    implements
        CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes> {
  _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Mutation$AddHistorySearchOfUser$addHistorySearchOfUser _instance;

  final TRes Function(Mutation$AddHistorySearchOfUser$addHistorySearchOfUser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? histories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        histories: histories == _undefined || histories == null
            ? _instance.histories
            : (histories as List<
                Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes histories(
          Iterable<Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories> Function(
                  Iterable<
                      CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
                          Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>>)
              _fn) =>
      call(
          histories: _fn(_instance.histories.map((e) =>
              CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<
        TRes>
    implements
        CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser(
      this._res);

  TRes _res;

  call({
    String? user_id,
    List<Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  }) =>
      _res;

  histories(_fn) => _res;
}

class Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories {
  Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories({
    required this.id,
    required this.data,
    required this.date_time,
    this.$__typename = 'History',
  });

  factory Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$data = json['data'];
    final l$date_time = json['date_time'];
    final l$$__typename = json['__typename'];
    return Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
      id: (l$id as String),
      data: (l$data as String),
      date_time: (l$date_time as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String data;

  final String date_time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$date_time = date_time;
    _resultData['date_time'] = l$date_time;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$data = data;
    final l$date_time = date_time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$data,
      l$date_time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$date_time = date_time;
    final lOther$date_time = other.date_time;
    if (l$date_time != lOther$date_time) {
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

extension UtilityExtension$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories
    on Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories {
  CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
          Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories>
      get copyWith =>
          CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
    TRes> {
  factory CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
    Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories instance,
    TRes Function(
            Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories)
        then,
  ) = _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories;

  factory CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories;

  TRes call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
            TRes> {
  _CopyWithImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
    this._instance,
    this._then,
  );

  final Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories
      _instance;

  final TRes Function(
      Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
    Object? date_time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        data: data == _undefined || data == null
            ? _instance.data
            : (data as String),
        date_time: date_time == _undefined || date_time == null
            ? _instance.date_time
            : (date_time as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories<
            TRes> {
  _CopyWithStubImpl$Mutation$AddHistorySearchOfUser$addHistorySearchOfUser$histories(
      this._res);

  TRes _res;

  call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteHistorySearchOfUser {
  factory Variables$Mutation$DeleteHistorySearchOfUser({
    required String userId,
    required String idSearch,
  }) =>
      Variables$Mutation$DeleteHistorySearchOfUser._({
        r'userId': userId,
        r'idSearch': idSearch,
      });

  Variables$Mutation$DeleteHistorySearchOfUser._(this._$data);

  factory Variables$Mutation$DeleteHistorySearchOfUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$idSearch = data['idSearch'];
    result$data['idSearch'] = (l$idSearch as String);
    return Variables$Mutation$DeleteHistorySearchOfUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get idSearch => (_$data['idSearch'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$idSearch = idSearch;
    result$data['idSearch'] = l$idSearch;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteHistorySearchOfUser<
          Variables$Mutation$DeleteHistorySearchOfUser>
      get copyWith => CopyWith$Variables$Mutation$DeleteHistorySearchOfUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$idSearch = idSearch;
    final lOther$idSearch = other.idSearch;
    if (l$idSearch != lOther$idSearch) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$idSearch = idSearch;
    return Object.hashAll([
      l$userId,
      l$idSearch,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteHistorySearchOfUser<TRes> {
  factory CopyWith$Variables$Mutation$DeleteHistorySearchOfUser(
    Variables$Mutation$DeleteHistorySearchOfUser instance,
    TRes Function(Variables$Mutation$DeleteHistorySearchOfUser) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteHistorySearchOfUser;

  factory CopyWith$Variables$Mutation$DeleteHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteHistorySearchOfUser;

  TRes call({
    String? userId,
    String? idSearch,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteHistorySearchOfUser<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteHistorySearchOfUser _instance;

  final TRes Function(Variables$Mutation$DeleteHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? idSearch = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteHistorySearchOfUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (idSearch != _undefined && idSearch != null)
          'idSearch': (idSearch as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteHistorySearchOfUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteHistorySearchOfUser(this._res);

  TRes _res;

  call({
    String? userId,
    String? idSearch,
  }) =>
      _res;
}

class Mutation$DeleteHistorySearchOfUser {
  Mutation$DeleteHistorySearchOfUser({
    required this.deleteHistorySearchOfUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteHistorySearchOfUser.fromJson(
      Map<String, dynamic> json) {
    final l$deleteHistorySearchOfUser = json['deleteHistorySearchOfUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteHistorySearchOfUser(
      deleteHistorySearchOfUser:
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser.fromJson(
              (l$deleteHistorySearchOfUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser
      deleteHistorySearchOfUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteHistorySearchOfUser = deleteHistorySearchOfUser;
    _resultData['deleteHistorySearchOfUser'] =
        l$deleteHistorySearchOfUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteHistorySearchOfUser = deleteHistorySearchOfUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteHistorySearchOfUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteHistorySearchOfUser = deleteHistorySearchOfUser;
    final lOther$deleteHistorySearchOfUser = other.deleteHistorySearchOfUser;
    if (l$deleteHistorySearchOfUser != lOther$deleteHistorySearchOfUser) {
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

extension UtilityExtension$Mutation$DeleteHistorySearchOfUser
    on Mutation$DeleteHistorySearchOfUser {
  CopyWith$Mutation$DeleteHistorySearchOfUser<
          Mutation$DeleteHistorySearchOfUser>
      get copyWith => CopyWith$Mutation$DeleteHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteHistorySearchOfUser<TRes> {
  factory CopyWith$Mutation$DeleteHistorySearchOfUser(
    Mutation$DeleteHistorySearchOfUser instance,
    TRes Function(Mutation$DeleteHistorySearchOfUser) then,
  ) = _CopyWithImpl$Mutation$DeleteHistorySearchOfUser;

  factory CopyWith$Mutation$DeleteHistorySearchOfUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser;

  TRes call({
    Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser?
        deleteHistorySearchOfUser,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<TRes>
      get deleteHistorySearchOfUser;
}

class _CopyWithImpl$Mutation$DeleteHistorySearchOfUser<TRes>
    implements CopyWith$Mutation$DeleteHistorySearchOfUser<TRes> {
  _CopyWithImpl$Mutation$DeleteHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteHistorySearchOfUser _instance;

  final TRes Function(Mutation$DeleteHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteHistorySearchOfUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteHistorySearchOfUser(
        deleteHistorySearchOfUser: deleteHistorySearchOfUser == _undefined ||
                deleteHistorySearchOfUser == null
            ? _instance.deleteHistorySearchOfUser
            : (deleteHistorySearchOfUser
                as Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<TRes>
      get deleteHistorySearchOfUser {
    final local$deleteHistorySearchOfUser = _instance.deleteHistorySearchOfUser;
    return CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
        local$deleteHistorySearchOfUser,
        (e) => call(deleteHistorySearchOfUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser<TRes>
    implements CopyWith$Mutation$DeleteHistorySearchOfUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser(this._res);

  TRes _res;

  call({
    Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser?
        deleteHistorySearchOfUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<TRes>
      get deleteHistorySearchOfUser =>
          CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser
              .stub(_res);
}

const documentNodeMutationDeleteHistorySearchOfUser =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteHistorySearchOfUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'idSearch')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteHistorySearchOfUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'idSearch'),
            value: VariableNode(name: NameNode(value: 'idSearch')),
          ),
        ],
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
            name: NameNode(value: 'histories'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'data'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date_time'),
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
Mutation$DeleteHistorySearchOfUser _parserFn$Mutation$DeleteHistorySearchOfUser(
        Map<String, dynamic> data) =>
    Mutation$DeleteHistorySearchOfUser.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteHistorySearchOfUser = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteHistorySearchOfUser?,
);

class Options$Mutation$DeleteHistorySearchOfUser
    extends graphql.MutationOptions<Mutation$DeleteHistorySearchOfUser> {
  Options$Mutation$DeleteHistorySearchOfUser({
    String? operationName,
    required Variables$Mutation$DeleteHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteHistorySearchOfUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteHistorySearchOfUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteHistorySearchOfUser>? update,
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
                        : _parserFn$Mutation$DeleteHistorySearchOfUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteHistorySearchOfUser,
          parserFn: _parserFn$Mutation$DeleteHistorySearchOfUser,
        );

  final OnMutationCompleted$Mutation$DeleteHistorySearchOfUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteHistorySearchOfUser
    extends graphql.WatchQueryOptions<Mutation$DeleteHistorySearchOfUser> {
  WatchOptions$Mutation$DeleteHistorySearchOfUser({
    String? operationName,
    required Variables$Mutation$DeleteHistorySearchOfUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteHistorySearchOfUser? typedOptimisticResult,
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
          document: documentNodeMutationDeleteHistorySearchOfUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteHistorySearchOfUser,
        );
}

extension ClientExtension$Mutation$DeleteHistorySearchOfUser
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteHistorySearchOfUser>>
      mutate$DeleteHistorySearchOfUser(
              Options$Mutation$DeleteHistorySearchOfUser options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteHistorySearchOfUser>
      watchMutation$DeleteHistorySearchOfUser(
              WatchOptions$Mutation$DeleteHistorySearchOfUser options) =>
          this.watchMutation(options);
}

class Mutation$DeleteHistorySearchOfUser$HookResult {
  Mutation$DeleteHistorySearchOfUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteHistorySearchOfUser runMutation;

  final graphql.QueryResult<Mutation$DeleteHistorySearchOfUser> result;
}

Mutation$DeleteHistorySearchOfUser$HookResult
    useMutation$DeleteHistorySearchOfUser(
        [WidgetOptions$Mutation$DeleteHistorySearchOfUser? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$DeleteHistorySearchOfUser());
  return Mutation$DeleteHistorySearchOfUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteHistorySearchOfUser>
    useWatchMutation$DeleteHistorySearchOfUser(
            WatchOptions$Mutation$DeleteHistorySearchOfUser options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteHistorySearchOfUser
    extends graphql.MutationOptions<Mutation$DeleteHistorySearchOfUser> {
  WidgetOptions$Mutation$DeleteHistorySearchOfUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteHistorySearchOfUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteHistorySearchOfUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteHistorySearchOfUser>? update,
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
                        : _parserFn$Mutation$DeleteHistorySearchOfUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteHistorySearchOfUser,
          parserFn: _parserFn$Mutation$DeleteHistorySearchOfUser,
        );

  final OnMutationCompleted$Mutation$DeleteHistorySearchOfUser?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteHistorySearchOfUser
    = graphql.MultiSourceResult<Mutation$DeleteHistorySearchOfUser> Function(
  Variables$Mutation$DeleteHistorySearchOfUser, {
  Object? optimisticResult,
  Mutation$DeleteHistorySearchOfUser? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteHistorySearchOfUser = widgets.Widget Function(
  RunMutation$Mutation$DeleteHistorySearchOfUser,
  graphql.QueryResult<Mutation$DeleteHistorySearchOfUser>?,
);

class Mutation$DeleteHistorySearchOfUser$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteHistorySearchOfUser> {
  Mutation$DeleteHistorySearchOfUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteHistorySearchOfUser? options,
    required Builder$Mutation$DeleteHistorySearchOfUser builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$DeleteHistorySearchOfUser(),
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

class Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser {
  Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser({
    required this.user_id,
    required this.histories,
    this.$__typename = 'HistorySearch',
  });

  factory Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser.fromJson(
      Map<String, dynamic> json) {
    final l$user_id = json['user_id'];
    final l$histories = json['histories'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
      user_id: (l$user_id as String),
      histories: (l$histories as List<dynamic>)
          .map((e) =>
              Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String user_id;

  final List<
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>
      histories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$histories = histories;
    _resultData['histories'] = l$histories.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$histories = histories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user_id,
      Object.hashAll(l$histories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$histories = histories;
    final lOther$histories = other.histories;
    if (l$histories.length != lOther$histories.length) {
      return false;
    }
    for (int i = 0; i < l$histories.length; i++) {
      final l$histories$entry = l$histories[i];
      final lOther$histories$entry = lOther$histories[i];
      if (l$histories$entry != lOther$histories$entry) {
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

extension UtilityExtension$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser
    on Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser {
  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser>
      get copyWith =>
          CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
    TRes> {
  factory CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
    Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser instance,
    TRes Function(Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser)
        then,
  ) = _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser;

  factory CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser;

  TRes call({
    String? user_id,
    List<Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  });
  TRes histories(
      Iterable<Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories> Function(
              Iterable<
                  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
                      Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
        TRes>
    implements
        CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
            TRes> {
  _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser _instance;

  final TRes Function(
      Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? histories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        histories: histories == _undefined || histories == null
            ? _instance.histories
            : (histories as List<
                Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes histories(
          Iterable<Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories> Function(
                  Iterable<
                      CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
                          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>>)
              _fn) =>
      call(
          histories: _fn(_instance.histories.map((e) =>
              CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
        TRes>
    implements
        CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser(
      this._res);

  TRes _res;

  call({
    String? user_id,
    List<Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>?
        histories,
    String? $__typename,
  }) =>
      _res;

  histories(_fn) => _res;
}

class Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories {
  Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories({
    required this.id,
    required this.data,
    required this.date_time,
    this.$__typename = 'History',
  });

  factory Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$data = json['data'];
    final l$date_time = json['date_time'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
      id: (l$id as String),
      data: (l$data as String),
      date_time: (l$date_time as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String data;

  final String date_time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$date_time = date_time;
    _resultData['date_time'] = l$date_time;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$data = data;
    final l$date_time = date_time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$data,
      l$date_time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$date_time = date_time;
    final lOther$date_time = other.date_time;
    if (l$date_time != lOther$date_time) {
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

extension UtilityExtension$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories
    on Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories {
  CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories>
      get copyWith =>
          CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
    TRes> {
  factory CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
    Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories
        instance,
    TRes Function(
            Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories)
        then,
  ) = _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories;

  factory CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories;

  TRes call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
            TRes> {
  _CopyWithImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
    this._instance,
    this._then,
  );

  final Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories
      _instance;

  final TRes Function(
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
    Object? date_time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        data: data == _undefined || data == null
            ? _instance.data
            : (data as String),
        date_time: date_time == _undefined || date_time == null
            ? _instance.date_time
            : (date_time as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
        TRes>
    implements
        CopyWith$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteHistorySearchOfUser$deleteHistorySearchOfUser$histories(
      this._res);

  TRes _res;

  call({
    String? id,
    String? data,
    String? date_time,
    String? $__typename,
  }) =>
      _res;
}
