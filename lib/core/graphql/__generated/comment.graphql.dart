// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$GetCommentsByPostId {
  factory Variables$Query$GetCommentsByPostId({required String postId}) =>
      Variables$Query$GetCommentsByPostId._({
        r'postId': postId,
      });

  Variables$Query$GetCommentsByPostId._(this._$data);

  factory Variables$Query$GetCommentsByPostId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    return Variables$Query$GetCommentsByPostId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Variables$Query$GetCommentsByPostId<
          Variables$Query$GetCommentsByPostId>
      get copyWith => CopyWith$Variables$Query$GetCommentsByPostId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCommentsByPostId) ||
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

abstract class CopyWith$Variables$Query$GetCommentsByPostId<TRes> {
  factory CopyWith$Variables$Query$GetCommentsByPostId(
    Variables$Query$GetCommentsByPostId instance,
    TRes Function(Variables$Query$GetCommentsByPostId) then,
  ) = _CopyWithImpl$Variables$Query$GetCommentsByPostId;

  factory CopyWith$Variables$Query$GetCommentsByPostId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCommentsByPostId;

  TRes call({String? postId});
}

class _CopyWithImpl$Variables$Query$GetCommentsByPostId<TRes>
    implements CopyWith$Variables$Query$GetCommentsByPostId<TRes> {
  _CopyWithImpl$Variables$Query$GetCommentsByPostId(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCommentsByPostId _instance;

  final TRes Function(Variables$Query$GetCommentsByPostId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postId = _undefined}) =>
      _then(Variables$Query$GetCommentsByPostId._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCommentsByPostId<TRes>
    implements CopyWith$Variables$Query$GetCommentsByPostId<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCommentsByPostId(this._res);

  TRes _res;

  call({String? postId}) => _res;
}

class Query$GetCommentsByPostId {
  Query$GetCommentsByPostId({
    required this.getCommentsByPostId,
    this.$__typename = 'Query',
  });

  factory Query$GetCommentsByPostId.fromJson(Map<String, dynamic> json) {
    final l$getCommentsByPostId = json['getCommentsByPostId'];
    final l$$__typename = json['__typename'];
    return Query$GetCommentsByPostId(
      getCommentsByPostId: (l$getCommentsByPostId as List<dynamic>)
          .map((e) => Query$GetCommentsByPostId$getCommentsByPostId.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCommentsByPostId$getCommentsByPostId> getCommentsByPostId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCommentsByPostId = getCommentsByPostId;
    _resultData['getCommentsByPostId'] =
        l$getCommentsByPostId.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCommentsByPostId = getCommentsByPostId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getCommentsByPostId.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCommentsByPostId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCommentsByPostId = getCommentsByPostId;
    final lOther$getCommentsByPostId = other.getCommentsByPostId;
    if (l$getCommentsByPostId.length != lOther$getCommentsByPostId.length) {
      return false;
    }
    for (int i = 0; i < l$getCommentsByPostId.length; i++) {
      final l$getCommentsByPostId$entry = l$getCommentsByPostId[i];
      final lOther$getCommentsByPostId$entry = lOther$getCommentsByPostId[i];
      if (l$getCommentsByPostId$entry != lOther$getCommentsByPostId$entry) {
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

extension UtilityExtension$Query$GetCommentsByPostId
    on Query$GetCommentsByPostId {
  CopyWith$Query$GetCommentsByPostId<Query$GetCommentsByPostId> get copyWith =>
      CopyWith$Query$GetCommentsByPostId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCommentsByPostId<TRes> {
  factory CopyWith$Query$GetCommentsByPostId(
    Query$GetCommentsByPostId instance,
    TRes Function(Query$GetCommentsByPostId) then,
  ) = _CopyWithImpl$Query$GetCommentsByPostId;

  factory CopyWith$Query$GetCommentsByPostId.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCommentsByPostId;

  TRes call({
    List<Query$GetCommentsByPostId$getCommentsByPostId>? getCommentsByPostId,
    String? $__typename,
  });
  TRes getCommentsByPostId(
      Iterable<Query$GetCommentsByPostId$getCommentsByPostId> Function(
              Iterable<
                  CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<
                      Query$GetCommentsByPostId$getCommentsByPostId>>)
          _fn);
}

class _CopyWithImpl$Query$GetCommentsByPostId<TRes>
    implements CopyWith$Query$GetCommentsByPostId<TRes> {
  _CopyWithImpl$Query$GetCommentsByPostId(
    this._instance,
    this._then,
  );

  final Query$GetCommentsByPostId _instance;

  final TRes Function(Query$GetCommentsByPostId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getCommentsByPostId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCommentsByPostId(
        getCommentsByPostId:
            getCommentsByPostId == _undefined || getCommentsByPostId == null
                ? _instance.getCommentsByPostId
                : (getCommentsByPostId
                    as List<Query$GetCommentsByPostId$getCommentsByPostId>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes getCommentsByPostId(
          Iterable<Query$GetCommentsByPostId$getCommentsByPostId> Function(
                  Iterable<
                      CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<
                          Query$GetCommentsByPostId$getCommentsByPostId>>)
              _fn) =>
      call(
          getCommentsByPostId: _fn(_instance.getCommentsByPostId.map(
              (e) => CopyWith$Query$GetCommentsByPostId$getCommentsByPostId(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCommentsByPostId<TRes>
    implements CopyWith$Query$GetCommentsByPostId<TRes> {
  _CopyWithStubImpl$Query$GetCommentsByPostId(this._res);

  TRes _res;

  call({
    List<Query$GetCommentsByPostId$getCommentsByPostId>? getCommentsByPostId,
    String? $__typename,
  }) =>
      _res;

  getCommentsByPostId(_fn) => _res;
}

const documentNodeQueryGetCommentsByPostId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCommentsByPostId'),
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
        name: NameNode(value: 'getCommentsByPostId'),
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
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
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
            name: NameNode(value: 'post_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'content'),
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
            name: NameNode(value: 'date_time_comment'),
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
Query$GetCommentsByPostId _parserFn$Query$GetCommentsByPostId(
        Map<String, dynamic> data) =>
    Query$GetCommentsByPostId.fromJson(data);
typedef OnQueryComplete$Query$GetCommentsByPostId = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCommentsByPostId?,
);

class Options$Query$GetCommentsByPostId
    extends graphql.QueryOptions<Query$GetCommentsByPostId> {
  Options$Query$GetCommentsByPostId({
    String? operationName,
    required Variables$Query$GetCommentsByPostId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCommentsByPostId? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCommentsByPostId? onComplete,
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
                        : _parserFn$Query$GetCommentsByPostId(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCommentsByPostId,
          parserFn: _parserFn$Query$GetCommentsByPostId,
        );

  final OnQueryComplete$Query$GetCommentsByPostId? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCommentsByPostId
    extends graphql.WatchQueryOptions<Query$GetCommentsByPostId> {
  WatchOptions$Query$GetCommentsByPostId({
    String? operationName,
    required Variables$Query$GetCommentsByPostId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCommentsByPostId? typedOptimisticResult,
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
          document: documentNodeQueryGetCommentsByPostId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCommentsByPostId,
        );
}

class FetchMoreOptions$Query$GetCommentsByPostId
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCommentsByPostId({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCommentsByPostId variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCommentsByPostId,
        );
}

extension ClientExtension$Query$GetCommentsByPostId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCommentsByPostId>>
      query$GetCommentsByPostId(
              Options$Query$GetCommentsByPostId options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetCommentsByPostId>
      watchQuery$GetCommentsByPostId(
              WatchOptions$Query$GetCommentsByPostId options) =>
          this.watchQuery(options);
  void writeQuery$GetCommentsByPostId({
    required Query$GetCommentsByPostId data,
    required Variables$Query$GetCommentsByPostId variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCommentsByPostId),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCommentsByPostId? readQuery$GetCommentsByPostId({
    required Variables$Query$GetCommentsByPostId variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetCommentsByPostId),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCommentsByPostId.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCommentsByPostId>
    useQuery$GetCommentsByPostId(Options$Query$GetCommentsByPostId options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetCommentsByPostId>
    useWatchQuery$GetCommentsByPostId(
            WatchOptions$Query$GetCommentsByPostId options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetCommentsByPostId$Widget
    extends graphql_flutter.Query<Query$GetCommentsByPostId> {
  Query$GetCommentsByPostId$Widget({
    widgets.Key? key,
    required Options$Query$GetCommentsByPostId options,
    required graphql_flutter.QueryBuilder<Query$GetCommentsByPostId> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetCommentsByPostId$getCommentsByPostId {
  Query$GetCommentsByPostId$getCommentsByPostId({
    required this.id,
    required this.user_id,
    required this.username,
    required this.name,
    required this.avatar,
    required this.post_id,
    required this.content,
    required this.image,
    required this.date_time_comment,
    this.$__typename = 'Comment',
  });

  factory Query$GetCommentsByPostId$getCommentsByPostId.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user_id = json['user_id'];
    final l$username = json['username'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$post_id = json['post_id'];
    final l$content = json['content'];
    final l$image = json['image'];
    final l$date_time_comment = json['date_time_comment'];
    final l$$__typename = json['__typename'];
    return Query$GetCommentsByPostId$getCommentsByPostId(
      id: (l$id as String),
      user_id: (l$user_id as String),
      username: (l$username as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      post_id: (l$post_id as String),
      content: (l$content as String),
      image: (l$image as String),
      date_time_comment: (l$date_time_comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String user_id;

  final String username;

  final String name;

  final String avatar;

  final String post_id;

  final String content;

  final String image;

  final String date_time_comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$post_id = post_id;
    _resultData['post_id'] = l$post_id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$date_time_comment = date_time_comment;
    _resultData['date_time_comment'] = l$date_time_comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user_id = user_id;
    final l$username = username;
    final l$name = name;
    final l$avatar = avatar;
    final l$post_id = post_id;
    final l$content = content;
    final l$image = image;
    final l$date_time_comment = date_time_comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user_id,
      l$username,
      l$name,
      l$avatar,
      l$post_id,
      l$content,
      l$image,
      l$date_time_comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCommentsByPostId$getCommentsByPostId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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
    final l$post_id = post_id;
    final lOther$post_id = other.post_id;
    if (l$post_id != lOther$post_id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$date_time_comment = date_time_comment;
    final lOther$date_time_comment = other.date_time_comment;
    if (l$date_time_comment != lOther$date_time_comment) {
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

extension UtilityExtension$Query$GetCommentsByPostId$getCommentsByPostId
    on Query$GetCommentsByPostId$getCommentsByPostId {
  CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<
          Query$GetCommentsByPostId$getCommentsByPostId>
      get copyWith => CopyWith$Query$GetCommentsByPostId$getCommentsByPostId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<TRes> {
  factory CopyWith$Query$GetCommentsByPostId$getCommentsByPostId(
    Query$GetCommentsByPostId$getCommentsByPostId instance,
    TRes Function(Query$GetCommentsByPostId$getCommentsByPostId) then,
  ) = _CopyWithImpl$Query$GetCommentsByPostId$getCommentsByPostId;

  factory CopyWith$Query$GetCommentsByPostId$getCommentsByPostId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCommentsByPostId$getCommentsByPostId;

  TRes call({
    String? id,
    String? user_id,
    String? username,
    String? name,
    String? avatar,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCommentsByPostId$getCommentsByPostId<TRes>
    implements CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<TRes> {
  _CopyWithImpl$Query$GetCommentsByPostId$getCommentsByPostId(
    this._instance,
    this._then,
  );

  final Query$GetCommentsByPostId$getCommentsByPostId _instance;

  final TRes Function(Query$GetCommentsByPostId$getCommentsByPostId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user_id = _undefined,
    Object? username = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? post_id = _undefined,
    Object? content = _undefined,
    Object? image = _undefined,
    Object? date_time_comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCommentsByPostId$getCommentsByPostId(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        post_id: post_id == _undefined || post_id == null
            ? _instance.post_id
            : (post_id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        date_time_comment:
            date_time_comment == _undefined || date_time_comment == null
                ? _instance.date_time_comment
                : (date_time_comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCommentsByPostId$getCommentsByPostId<TRes>
    implements CopyWith$Query$GetCommentsByPostId$getCommentsByPostId<TRes> {
  _CopyWithStubImpl$Query$GetCommentsByPostId$getCommentsByPostId(this._res);

  TRes _res;

  call({
    String? id,
    String? user_id,
    String? username,
    String? name,
    String? avatar,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateComment {
  factory Variables$Mutation$CreateComment(
          {required Input$CreateCommentDto data}) =>
      Variables$Mutation$CreateComment._({
        r'data': data,
      });

  Variables$Mutation$CreateComment._(this._$data);

  factory Variables$Mutation$CreateComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CreateCommentDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreateComment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateCommentDto get data => (_$data['data'] as Input$CreateCommentDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateComment<Variables$Mutation$CreateComment>
      get copyWith => CopyWith$Variables$Mutation$CreateComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateComment) ||
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

abstract class CopyWith$Variables$Mutation$CreateComment<TRes> {
  factory CopyWith$Variables$Mutation$CreateComment(
    Variables$Mutation$CreateComment instance,
    TRes Function(Variables$Mutation$CreateComment) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateComment;

  factory CopyWith$Variables$Mutation$CreateComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateComment;

  TRes call({Input$CreateCommentDto? data});
}

class _CopyWithImpl$Variables$Mutation$CreateComment<TRes>
    implements CopyWith$Variables$Mutation$CreateComment<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateComment _instance;

  final TRes Function(Variables$Mutation$CreateComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreateComment._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CreateCommentDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateComment<TRes>
    implements CopyWith$Variables$Mutation$CreateComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateComment(this._res);

  TRes _res;

  call({Input$CreateCommentDto? data}) => _res;
}

class Mutation$CreateComment {
  Mutation$CreateComment({
    required this.createComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateComment.fromJson(Map<String, dynamic> json) {
    final l$createComment = json['createComment'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateComment(
      createComment: Mutation$CreateComment$createComment.fromJson(
          (l$createComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateComment$createComment createComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createComment = createComment;
    _resultData['createComment'] = l$createComment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createComment = createComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createComment = createComment;
    final lOther$createComment = other.createComment;
    if (l$createComment != lOther$createComment) {
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

extension UtilityExtension$Mutation$CreateComment on Mutation$CreateComment {
  CopyWith$Mutation$CreateComment<Mutation$CreateComment> get copyWith =>
      CopyWith$Mutation$CreateComment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateComment<TRes> {
  factory CopyWith$Mutation$CreateComment(
    Mutation$CreateComment instance,
    TRes Function(Mutation$CreateComment) then,
  ) = _CopyWithImpl$Mutation$CreateComment;

  factory CopyWith$Mutation$CreateComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateComment;

  TRes call({
    Mutation$CreateComment$createComment? createComment,
    String? $__typename,
  });
  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment;
}

class _CopyWithImpl$Mutation$CreateComment<TRes>
    implements CopyWith$Mutation$CreateComment<TRes> {
  _CopyWithImpl$Mutation$CreateComment(
    this._instance,
    this._then,
  );

  final Mutation$CreateComment _instance;

  final TRes Function(Mutation$CreateComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateComment(
        createComment: createComment == _undefined || createComment == null
            ? _instance.createComment
            : (createComment as Mutation$CreateComment$createComment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment {
    final local$createComment = _instance.createComment;
    return CopyWith$Mutation$CreateComment$createComment(
        local$createComment, (e) => call(createComment: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateComment<TRes>
    implements CopyWith$Mutation$CreateComment<TRes> {
  _CopyWithStubImpl$Mutation$CreateComment(this._res);

  TRes _res;

  call({
    Mutation$CreateComment$createComment? createComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment =>
      CopyWith$Mutation$CreateComment$createComment.stub(_res);
}

const documentNodeMutationCreateComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateComment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateCommentDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createComment'),
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
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
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
            name: NameNode(value: 'post_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'content'),
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
            name: NameNode(value: 'date_time_comment'),
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
Mutation$CreateComment _parserFn$Mutation$CreateComment(
        Map<String, dynamic> data) =>
    Mutation$CreateComment.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateComment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateComment?,
);

class Options$Mutation$CreateComment
    extends graphql.MutationOptions<Mutation$CreateComment> {
  Options$Mutation$CreateComment({
    String? operationName,
    required Variables$Mutation$CreateComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateComment>? update,
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
                        : _parserFn$Mutation$CreateComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateComment,
          parserFn: _parserFn$Mutation$CreateComment,
        );

  final OnMutationCompleted$Mutation$CreateComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateComment
    extends graphql.WatchQueryOptions<Mutation$CreateComment> {
  WatchOptions$Mutation$CreateComment({
    String? operationName,
    required Variables$Mutation$CreateComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateComment? typedOptimisticResult,
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
          document: documentNodeMutationCreateComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateComment,
        );
}

extension ClientExtension$Mutation$CreateComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateComment>> mutate$CreateComment(
          Options$Mutation$CreateComment options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateComment> watchMutation$CreateComment(
          WatchOptions$Mutation$CreateComment options) =>
      this.watchMutation(options);
}

class Mutation$CreateComment$HookResult {
  Mutation$CreateComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateComment runMutation;

  final graphql.QueryResult<Mutation$CreateComment> result;
}

Mutation$CreateComment$HookResult useMutation$CreateComment(
    [WidgetOptions$Mutation$CreateComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateComment());
  return Mutation$CreateComment$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateComment> useWatchMutation$CreateComment(
        WatchOptions$Mutation$CreateComment options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateComment
    extends graphql.MutationOptions<Mutation$CreateComment> {
  WidgetOptions$Mutation$CreateComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateComment>? update,
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
                        : _parserFn$Mutation$CreateComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateComment,
          parserFn: _parserFn$Mutation$CreateComment,
        );

  final OnMutationCompleted$Mutation$CreateComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateComment
    = graphql.MultiSourceResult<Mutation$CreateComment> Function(
  Variables$Mutation$CreateComment, {
  Object? optimisticResult,
  Mutation$CreateComment? typedOptimisticResult,
});
typedef Builder$Mutation$CreateComment = widgets.Widget Function(
  RunMutation$Mutation$CreateComment,
  graphql.QueryResult<Mutation$CreateComment>?,
);

class Mutation$CreateComment$Widget
    extends graphql_flutter.Mutation<Mutation$CreateComment> {
  Mutation$CreateComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateComment? options,
    required Builder$Mutation$CreateComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateComment(),
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

class Mutation$CreateComment$createComment {
  Mutation$CreateComment$createComment({
    required this.id,
    required this.user_id,
    required this.username,
    required this.name,
    required this.avatar,
    required this.post_id,
    required this.content,
    required this.image,
    required this.date_time_comment,
    this.$__typename = 'Comment',
  });

  factory Mutation$CreateComment$createComment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user_id = json['user_id'];
    final l$username = json['username'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$post_id = json['post_id'];
    final l$content = json['content'];
    final l$image = json['image'];
    final l$date_time_comment = json['date_time_comment'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateComment$createComment(
      id: (l$id as String),
      user_id: (l$user_id as String),
      username: (l$username as String),
      name: (l$name as String),
      avatar: (l$avatar as String),
      post_id: (l$post_id as String),
      content: (l$content as String),
      image: (l$image as String),
      date_time_comment: (l$date_time_comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String user_id;

  final String username;

  final String name;

  final String avatar;

  final String post_id;

  final String content;

  final String image;

  final String date_time_comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$post_id = post_id;
    _resultData['post_id'] = l$post_id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$date_time_comment = date_time_comment;
    _resultData['date_time_comment'] = l$date_time_comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user_id = user_id;
    final l$username = username;
    final l$name = name;
    final l$avatar = avatar;
    final l$post_id = post_id;
    final l$content = content;
    final l$image = image;
    final l$date_time_comment = date_time_comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user_id,
      l$username,
      l$name,
      l$avatar,
      l$post_id,
      l$content,
      l$image,
      l$date_time_comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateComment$createComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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
    final l$post_id = post_id;
    final lOther$post_id = other.post_id;
    if (l$post_id != lOther$post_id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$date_time_comment = date_time_comment;
    final lOther$date_time_comment = other.date_time_comment;
    if (l$date_time_comment != lOther$date_time_comment) {
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

extension UtilityExtension$Mutation$CreateComment$createComment
    on Mutation$CreateComment$createComment {
  CopyWith$Mutation$CreateComment$createComment<
          Mutation$CreateComment$createComment>
      get copyWith => CopyWith$Mutation$CreateComment$createComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateComment$createComment<TRes> {
  factory CopyWith$Mutation$CreateComment$createComment(
    Mutation$CreateComment$createComment instance,
    TRes Function(Mutation$CreateComment$createComment) then,
  ) = _CopyWithImpl$Mutation$CreateComment$createComment;

  factory CopyWith$Mutation$CreateComment$createComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateComment$createComment;

  TRes call({
    String? id,
    String? user_id,
    String? username,
    String? name,
    String? avatar,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateComment$createComment<TRes>
    implements CopyWith$Mutation$CreateComment$createComment<TRes> {
  _CopyWithImpl$Mutation$CreateComment$createComment(
    this._instance,
    this._then,
  );

  final Mutation$CreateComment$createComment _instance;

  final TRes Function(Mutation$CreateComment$createComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user_id = _undefined,
    Object? username = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? post_id = _undefined,
    Object? content = _undefined,
    Object? image = _undefined,
    Object? date_time_comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateComment$createComment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        post_id: post_id == _undefined || post_id == null
            ? _instance.post_id
            : (post_id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        date_time_comment:
            date_time_comment == _undefined || date_time_comment == null
                ? _instance.date_time_comment
                : (date_time_comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateComment$createComment<TRes>
    implements CopyWith$Mutation$CreateComment$createComment<TRes> {
  _CopyWithStubImpl$Mutation$CreateComment$createComment(this._res);

  TRes _res;

  call({
    String? id,
    String? user_id,
    String? username,
    String? name,
    String? avatar,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
    String? $__typename,
  }) =>
      _res;
}
