// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$User {
  factory Variables$Query$User({required String id}) => Variables$Query$User._({
        r'id': id,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$User) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(
    Variables$Query$User instance,
    TRes Function(Variables$Query$User) then,
  ) = _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(
    this._instance,
    this._then,
  );

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$User {
  Query$User({
    required this.user,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$User(
      user: Query$User$user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Query$User$user? user,
    String? $__typename,
  });
  CopyWith$Query$User$user<TRes> get user;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$User$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$User$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$user<TRes> get user =>
      CopyWith$Query$User$user.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
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
        name: NameNode(value: 'user'),
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
            name: NameNode(value: 'gender'),
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
            name: NameNode(value: 'date_created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_closed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'follower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'blocks'),
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
Query$User _parserFn$Query$User(Map<String, dynamic> data) =>
    Query$User.fromJson(data);
typedef OnQueryComplete$Query$User = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$User?,
);

class Options$Query$User extends graphql.QueryOptions<Query$User> {
  Options$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$User? onComplete,
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
                    data == null ? null : _parserFn$Query$User(data),
                  ),
          onError: onError,
          document: documentNodeQueryUser,
          parserFn: _parserFn$Query$User,
        );

  final OnQueryComplete$Query$User? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$User extends graphql.WatchQueryOptions<Query$User> {
  WatchOptions$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
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
          document: documentNodeQueryUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$User,
        );
}

class FetchMoreOptions$Query$User extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$User variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryUser,
        );
}

extension ClientExtension$Query$User on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User>> query$User(
          Options$Query$User options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$User> watchQuery$User(
          WatchOptions$Query$User options) =>
      this.watchQuery(options);
  void writeQuery$User({
    required Query$User data,
    required Variables$Query$User variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User? readQuery$User({
    required Variables$Query$User variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$User.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User> useQuery$User(
        Options$Query$User options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$User> useWatchQuery$User(
        WatchOptions$Query$User options) =>
    graphql_flutter.useWatchQuery(options);

class Query$User$Widget extends graphql_flutter.Query<Query$User> {
  Query$User$Widget({
    widgets.Key? key,
    required Options$Query$User options,
    required graphql_flutter.QueryBuilder<Query$User> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$User$user {
  Query$User$user({
    required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.account,
    required this.avatar,
    required this.date_created,
    required this.date_closed,
    required this.following,
    required this.follower,
    required this.blocks,
    this.$__typename = 'User',
  });

  factory Query$User$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$account = json['account'];
    final l$avatar = json['avatar'];
    final l$date_created = json['date_created'];
    final l$date_closed = json['date_closed'];
    final l$following = json['following'];
    final l$follower = json['follower'];
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Query$User$user(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      age: (l$age as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      email: (l$email as String),
      phone: (l$phone as String),
      account:
          Query$User$user$account.fromJson((l$account as Map<String, dynamic>)),
      avatar: (l$avatar as String),
      date_created: (l$date_created as String),
      date_closed: (l$date_closed as String),
      following:
          (l$following as List<dynamic>).map((e) => (e as String)).toList(),
      follower:
          (l$follower as List<dynamic>).map((e) => (e as String)).toList(),
      blocks: (l$blocks as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double gender;

  final double age;

  final String living;

  final String bio;

  final String email;

  final String phone;

  final Query$User$user$account account;

  final String avatar;

  final String date_created;

  final String date_closed;

  final List<String> following;

  final List<String> follower;

  final List<String> blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$date_created = date_created;
    _resultData['date_created'] = l$date_created;
    final l$date_closed = date_closed;
    _resultData['date_closed'] = l$date_closed;
    final l$following = following;
    _resultData['following'] = l$following.map((e) => e).toList();
    final l$follower = follower;
    _resultData['follower'] = l$follower.map((e) => e).toList();
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$age = age;
    final l$living = living;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$account = account;
    final l$avatar = avatar;
    final l$date_created = date_created;
    final l$date_closed = date_closed;
    final l$following = following;
    final l$follower = follower;
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$age,
      l$living,
      l$bio,
      l$email,
      l$phone,
      l$account,
      l$avatar,
      l$date_created,
      l$date_closed,
      Object.hashAll(l$following.map((v) => v)),
      Object.hashAll(l$follower.map((v) => v)),
      Object.hashAll(l$blocks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$user) || runtimeType != other.runtimeType) {
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$date_created = date_created;
    final lOther$date_created = other.date_created;
    if (l$date_created != lOther$date_created) {
      return false;
    }
    final l$date_closed = date_closed;
    final lOther$date_closed = other.date_closed;
    if (l$date_closed != lOther$date_closed) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following.length != lOther$following.length) {
      return false;
    }
    for (int i = 0; i < l$following.length; i++) {
      final l$following$entry = l$following[i];
      final lOther$following$entry = lOther$following[i];
      if (l$following$entry != lOther$following$entry) {
        return false;
      }
    }
    final l$follower = follower;
    final lOther$follower = other.follower;
    if (l$follower.length != lOther$follower.length) {
      return false;
    }
    for (int i = 0; i < l$follower.length; i++) {
      final l$follower$entry = l$follower[i];
      final lOther$follower$entry = lOther$follower[i];
      if (l$follower$entry != lOther$follower$entry) {
        return false;
      }
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks.length != lOther$blocks.length) {
      return false;
    }
    for (int i = 0; i < l$blocks.length; i++) {
      final l$blocks$entry = l$blocks[i];
      final lOther$blocks$entry = lOther$blocks[i];
      if (l$blocks$entry != lOther$blocks$entry) {
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

extension UtilityExtension$Query$User$user on Query$User$user {
  CopyWith$Query$User$user<Query$User$user> get copyWith =>
      CopyWith$Query$User$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$user<TRes> {
  factory CopyWith$Query$User$user(
    Query$User$user instance,
    TRes Function(Query$User$user) then,
  ) = _CopyWithImpl$Query$User$user;

  factory CopyWith$Query$User$user.stub(TRes res) =
      _CopyWithStubImpl$Query$User$user;

  TRes call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    Query$User$user$account? account,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  });
  CopyWith$Query$User$user$account<TRes> get account;
}

class _CopyWithImpl$Query$User$user<TRes>
    implements CopyWith$Query$User$user<TRes> {
  _CopyWithImpl$Query$User$user(
    this._instance,
    this._then,
  );

  final Query$User$user _instance;

  final TRes Function(Query$User$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? account = _undefined,
    Object? avatar = _undefined,
    Object? date_created = _undefined,
    Object? date_closed = _undefined,
    Object? following = _undefined,
    Object? follower = _undefined,
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$User$user$account),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        date_created: date_created == _undefined || date_created == null
            ? _instance.date_created
            : (date_created as String),
        date_closed: date_closed == _undefined || date_closed == null
            ? _instance.date_closed
            : (date_closed as String),
        following: following == _undefined || following == null
            ? _instance.following
            : (following as List<String>),
        follower: follower == _undefined || follower == null
            ? _instance.follower
            : (follower as List<String>),
        blocks: blocks == _undefined || blocks == null
            ? _instance.blocks
            : (blocks as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$user$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$User$user$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$User$user<TRes>
    implements CopyWith$Query$User$user<TRes> {
  _CopyWithStubImpl$Query$User$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    Query$User$user$account? account,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$user$account<TRes> get account =>
      CopyWith$Query$User$user$account.stub(_res);
}

class Query$User$user$account {
  Query$User$user$account({
    required this.username,
    this.$__typename = 'Account',
  });

  factory Query$User$user$account.fromJson(Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Query$User$user$account(
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
    if (!(other is Query$User$user$account) ||
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

extension UtilityExtension$Query$User$user$account on Query$User$user$account {
  CopyWith$Query$User$user$account<Query$User$user$account> get copyWith =>
      CopyWith$Query$User$user$account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$user$account<TRes> {
  factory CopyWith$Query$User$user$account(
    Query$User$user$account instance,
    TRes Function(Query$User$user$account) then,
  ) = _CopyWithImpl$Query$User$user$account;

  factory CopyWith$Query$User$user$account.stub(TRes res) =
      _CopyWithStubImpl$Query$User$user$account;

  TRes call({
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$user$account<TRes>
    implements CopyWith$Query$User$user$account<TRes> {
  _CopyWithImpl$Query$User$user$account(
    this._instance,
    this._then,
  );

  final Query$User$user$account _instance;

  final TRes Function(Query$User$user$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$user$account(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$user$account<TRes>
    implements CopyWith$Query$User$user$account<TRes> {
  _CopyWithStubImpl$Query$User$user$account(this._res);

  TRes _res;

  call({
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({required Input$UpdateUserDto data}) =>
      Variables$Mutation$UpdateUser._({
        r'data': data,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UpdateUserDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateUserDto get data => (_$data['data'] as Input$UpdateUserDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUser) ||
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

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({Input$UpdateUserDto? data});
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UpdateUserDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({Input$UpdateUserDto? data}) => _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    required this.updateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUser: Mutation$UpdateUser$updateUser.fromJson(
          (l$updateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUser$updateUser updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
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

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    Mutation$UpdateUser$updateUser? updateUser,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        updateUser: updateUser == _undefined || updateUser == null
            ? _instance.updateUser
            : (updateUser as Mutation$UpdateUser$updateUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Mutation$UpdateUser$updateUser(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    Mutation$UpdateUser$updateUser? updateUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$UpdateUser$updateUser.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateUserDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
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
            name: NameNode(value: 'age'),
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
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateUser?,
);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser({
    String? operationName,
    required Variables$Mutation$UpdateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser({
    String? operationName,
    required Variables$Mutation$UpdateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
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
          document: documentNodeMutationUpdateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUser,
        );
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          Options$Mutation$UpdateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          WatchOptions$Mutation$UpdateUser options) =>
      this.watchMutation(options);
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        WatchOptions$Mutation$UpdateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser> Function(
  Variables$Mutation$UpdateUser, {
  Object? optimisticResult,
  Mutation$UpdateUser? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
  RunMutation$Mutation$UpdateUser,
  graphql.QueryResult<Mutation$UpdateUser>?,
);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUser? options,
    required Builder$Mutation$UpdateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUser(),
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

class Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.avatar,
    this.$__typename = 'User',
  });

  factory Mutation$UpdateUser$updateUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$age = json['age'];
    final l$gender = json['gender'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser(
      id: (l$id as String),
      name: (l$name as String),
      age: (l$age as num).toDouble(),
      gender: (l$gender as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      email: (l$email as String),
      phone: (l$phone as String),
      avatar: (l$avatar as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double age;

  final double gender;

  final String living;

  final String bio;

  final String email;

  final String phone;

  final String avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
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
    final l$age = age;
    final l$gender = gender;
    final l$living = living;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$age,
      l$gender,
      l$living,
      l$bio,
      l$email,
      l$phone,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser$updateUser) ||
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser
    on Mutation$UpdateUser$updateUser {
  CopyWith$Mutation$UpdateUser$updateUser<Mutation$UpdateUser$updateUser>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser(
    Mutation$UpdateUser$updateUser instance,
    TRes Function(Mutation$UpdateUser$updateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser;

  factory CopyWith$Mutation$UpdateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser;

  TRes call({
    String? id,
    String? name,
    double? age,
    double? gender,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser _instance;

  final TRes Function(Mutation$UpdateUser$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? age = _undefined,
    Object? gender = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser$updateUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? age,
    double? gender,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$FollowUser {
  factory Variables$Mutation$FollowUser({
    required String userId,
    required String followerId,
  }) =>
      Variables$Mutation$FollowUser._({
        r'userId': userId,
        r'followerId': followerId,
      });

  Variables$Mutation$FollowUser._(this._$data);

  factory Variables$Mutation$FollowUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$followerId = data['followerId'];
    result$data['followerId'] = (l$followerId as String);
    return Variables$Mutation$FollowUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get followerId => (_$data['followerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$followerId = followerId;
    result$data['followerId'] = l$followerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$FollowUser<Variables$Mutation$FollowUser>
      get copyWith => CopyWith$Variables$Mutation$FollowUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FollowUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$followerId = followerId;
    final lOther$followerId = other.followerId;
    if (l$followerId != lOther$followerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$followerId = followerId;
    return Object.hashAll([
      l$userId,
      l$followerId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$FollowUser<TRes> {
  factory CopyWith$Variables$Mutation$FollowUser(
    Variables$Mutation$FollowUser instance,
    TRes Function(Variables$Mutation$FollowUser) then,
  ) = _CopyWithImpl$Variables$Mutation$FollowUser;

  factory CopyWith$Variables$Mutation$FollowUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FollowUser;

  TRes call({
    String? userId,
    String? followerId,
  });
}

class _CopyWithImpl$Variables$Mutation$FollowUser<TRes>
    implements CopyWith$Variables$Mutation$FollowUser<TRes> {
  _CopyWithImpl$Variables$Mutation$FollowUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FollowUser _instance;

  final TRes Function(Variables$Mutation$FollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? followerId = _undefined,
  }) =>
      _then(Variables$Mutation$FollowUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (followerId != _undefined && followerId != null)
          'followerId': (followerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FollowUser<TRes>
    implements CopyWith$Variables$Mutation$FollowUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FollowUser(this._res);

  TRes _res;

  call({
    String? userId,
    String? followerId,
  }) =>
      _res;
}

class Mutation$FollowUser {
  Mutation$FollowUser({
    required this.followUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FollowUser.fromJson(Map<String, dynamic> json) {
    final l$followUser = json['followUser'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowUser(
      followUser: Mutation$FollowUser$followUser.fromJson(
          (l$followUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FollowUser$followUser followUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followUser = followUser;
    _resultData['followUser'] = l$followUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followUser = followUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FollowUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$followUser = followUser;
    final lOther$followUser = other.followUser;
    if (l$followUser != lOther$followUser) {
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

extension UtilityExtension$Mutation$FollowUser on Mutation$FollowUser {
  CopyWith$Mutation$FollowUser<Mutation$FollowUser> get copyWith =>
      CopyWith$Mutation$FollowUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FollowUser<TRes> {
  factory CopyWith$Mutation$FollowUser(
    Mutation$FollowUser instance,
    TRes Function(Mutation$FollowUser) then,
  ) = _CopyWithImpl$Mutation$FollowUser;

  factory CopyWith$Mutation$FollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowUser;

  TRes call({
    Mutation$FollowUser$followUser? followUser,
    String? $__typename,
  });
  CopyWith$Mutation$FollowUser$followUser<TRes> get followUser;
}

class _CopyWithImpl$Mutation$FollowUser<TRes>
    implements CopyWith$Mutation$FollowUser<TRes> {
  _CopyWithImpl$Mutation$FollowUser(
    this._instance,
    this._then,
  );

  final Mutation$FollowUser _instance;

  final TRes Function(Mutation$FollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FollowUser(
        followUser: followUser == _undefined || followUser == null
            ? _instance.followUser
            : (followUser as Mutation$FollowUser$followUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FollowUser$followUser<TRes> get followUser {
    final local$followUser = _instance.followUser;
    return CopyWith$Mutation$FollowUser$followUser(
        local$followUser, (e) => call(followUser: e));
  }
}

class _CopyWithStubImpl$Mutation$FollowUser<TRes>
    implements CopyWith$Mutation$FollowUser<TRes> {
  _CopyWithStubImpl$Mutation$FollowUser(this._res);

  TRes _res;

  call({
    Mutation$FollowUser$followUser? followUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FollowUser$followUser<TRes> get followUser =>
      CopyWith$Mutation$FollowUser$followUser.stub(_res);
}

const documentNodeMutationFollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FollowUser'),
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
        variable: VariableNode(name: NameNode(value: 'followerId')),
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
        name: NameNode(value: 'followUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'followerId'),
            value: VariableNode(name: NameNode(value: 'followerId')),
          ),
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
            name: NameNode(value: 'age'),
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
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_closed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'follower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'blocks'),
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
Mutation$FollowUser _parserFn$Mutation$FollowUser(Map<String, dynamic> data) =>
    Mutation$FollowUser.fromJson(data);
typedef OnMutationCompleted$Mutation$FollowUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$FollowUser?,
);

class Options$Mutation$FollowUser
    extends graphql.MutationOptions<Mutation$FollowUser> {
  Options$Mutation$FollowUser({
    String? operationName,
    required Variables$Mutation$FollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FollowUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$FollowUser>? update,
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
                    data == null ? null : _parserFn$Mutation$FollowUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFollowUser,
          parserFn: _parserFn$Mutation$FollowUser,
        );

  final OnMutationCompleted$Mutation$FollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FollowUser
    extends graphql.WatchQueryOptions<Mutation$FollowUser> {
  WatchOptions$Mutation$FollowUser({
    String? operationName,
    required Variables$Mutation$FollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowUser? typedOptimisticResult,
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
          document: documentNodeMutationFollowUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FollowUser,
        );
}

extension ClientExtension$Mutation$FollowUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FollowUser>> mutate$FollowUser(
          Options$Mutation$FollowUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$FollowUser> watchMutation$FollowUser(
          WatchOptions$Mutation$FollowUser options) =>
      this.watchMutation(options);
}

class Mutation$FollowUser$HookResult {
  Mutation$FollowUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$FollowUser runMutation;

  final graphql.QueryResult<Mutation$FollowUser> result;
}

Mutation$FollowUser$HookResult useMutation$FollowUser(
    [WidgetOptions$Mutation$FollowUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$FollowUser());
  return Mutation$FollowUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FollowUser> useWatchMutation$FollowUser(
        WatchOptions$Mutation$FollowUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FollowUser
    extends graphql.MutationOptions<Mutation$FollowUser> {
  WidgetOptions$Mutation$FollowUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FollowUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$FollowUser>? update,
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
                    data == null ? null : _parserFn$Mutation$FollowUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFollowUser,
          parserFn: _parserFn$Mutation$FollowUser,
        );

  final OnMutationCompleted$Mutation$FollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$FollowUser
    = graphql.MultiSourceResult<Mutation$FollowUser> Function(
  Variables$Mutation$FollowUser, {
  Object? optimisticResult,
  Mutation$FollowUser? typedOptimisticResult,
});
typedef Builder$Mutation$FollowUser = widgets.Widget Function(
  RunMutation$Mutation$FollowUser,
  graphql.QueryResult<Mutation$FollowUser>?,
);

class Mutation$FollowUser$Widget
    extends graphql_flutter.Mutation<Mutation$FollowUser> {
  Mutation$FollowUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$FollowUser? options,
    required Builder$Mutation$FollowUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$FollowUser(),
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

class Mutation$FollowUser$followUser {
  Mutation$FollowUser$followUser({
    required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.date_created,
    required this.date_closed,
    required this.following,
    required this.follower,
    required this.blocks,
    this.$__typename = 'User',
  });

  factory Mutation$FollowUser$followUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$avatar = json['avatar'];
    final l$date_created = json['date_created'];
    final l$date_closed = json['date_closed'];
    final l$following = json['following'];
    final l$follower = json['follower'];
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowUser$followUser(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      age: (l$age as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      email: (l$email as String),
      phone: (l$phone as String),
      avatar: (l$avatar as String),
      date_created: (l$date_created as String),
      date_closed: (l$date_closed as String),
      following:
          (l$following as List<dynamic>).map((e) => (e as String)).toList(),
      follower:
          (l$follower as List<dynamic>).map((e) => (e as String)).toList(),
      blocks: (l$blocks as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double gender;

  final double age;

  final String living;

  final String bio;

  final String email;

  final String phone;

  final String avatar;

  final String date_created;

  final String date_closed;

  final List<String> following;

  final List<String> follower;

  final List<String> blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$date_created = date_created;
    _resultData['date_created'] = l$date_created;
    final l$date_closed = date_closed;
    _resultData['date_closed'] = l$date_closed;
    final l$following = following;
    _resultData['following'] = l$following.map((e) => e).toList();
    final l$follower = follower;
    _resultData['follower'] = l$follower.map((e) => e).toList();
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$age = age;
    final l$living = living;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$avatar = avatar;
    final l$date_created = date_created;
    final l$date_closed = date_closed;
    final l$following = following;
    final l$follower = follower;
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$age,
      l$living,
      l$bio,
      l$email,
      l$phone,
      l$avatar,
      l$date_created,
      l$date_closed,
      Object.hashAll(l$following.map((v) => v)),
      Object.hashAll(l$follower.map((v) => v)),
      Object.hashAll(l$blocks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FollowUser$followUser) ||
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$date_created = date_created;
    final lOther$date_created = other.date_created;
    if (l$date_created != lOther$date_created) {
      return false;
    }
    final l$date_closed = date_closed;
    final lOther$date_closed = other.date_closed;
    if (l$date_closed != lOther$date_closed) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following.length != lOther$following.length) {
      return false;
    }
    for (int i = 0; i < l$following.length; i++) {
      final l$following$entry = l$following[i];
      final lOther$following$entry = lOther$following[i];
      if (l$following$entry != lOther$following$entry) {
        return false;
      }
    }
    final l$follower = follower;
    final lOther$follower = other.follower;
    if (l$follower.length != lOther$follower.length) {
      return false;
    }
    for (int i = 0; i < l$follower.length; i++) {
      final l$follower$entry = l$follower[i];
      final lOther$follower$entry = lOther$follower[i];
      if (l$follower$entry != lOther$follower$entry) {
        return false;
      }
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks.length != lOther$blocks.length) {
      return false;
    }
    for (int i = 0; i < l$blocks.length; i++) {
      final l$blocks$entry = l$blocks[i];
      final lOther$blocks$entry = lOther$blocks[i];
      if (l$blocks$entry != lOther$blocks$entry) {
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

extension UtilityExtension$Mutation$FollowUser$followUser
    on Mutation$FollowUser$followUser {
  CopyWith$Mutation$FollowUser$followUser<Mutation$FollowUser$followUser>
      get copyWith => CopyWith$Mutation$FollowUser$followUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FollowUser$followUser<TRes> {
  factory CopyWith$Mutation$FollowUser$followUser(
    Mutation$FollowUser$followUser instance,
    TRes Function(Mutation$FollowUser$followUser) then,
  ) = _CopyWithImpl$Mutation$FollowUser$followUser;

  factory CopyWith$Mutation$FollowUser$followUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowUser$followUser;

  TRes call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FollowUser$followUser<TRes>
    implements CopyWith$Mutation$FollowUser$followUser<TRes> {
  _CopyWithImpl$Mutation$FollowUser$followUser(
    this._instance,
    this._then,
  );

  final Mutation$FollowUser$followUser _instance;

  final TRes Function(Mutation$FollowUser$followUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? avatar = _undefined,
    Object? date_created = _undefined,
    Object? date_closed = _undefined,
    Object? following = _undefined,
    Object? follower = _undefined,
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FollowUser$followUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        date_created: date_created == _undefined || date_created == null
            ? _instance.date_created
            : (date_created as String),
        date_closed: date_closed == _undefined || date_closed == null
            ? _instance.date_closed
            : (date_closed as String),
        following: following == _undefined || following == null
            ? _instance.following
            : (following as List<String>),
        follower: follower == _undefined || follower == null
            ? _instance.follower
            : (follower as List<String>),
        blocks: blocks == _undefined || blocks == null
            ? _instance.blocks
            : (blocks as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$FollowUser$followUser<TRes>
    implements CopyWith$Mutation$FollowUser$followUser<TRes> {
  _CopyWithStubImpl$Mutation$FollowUser$followUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnFollowUser {
  factory Variables$Mutation$UnFollowUser({
    required String userId,
    required String followerId,
  }) =>
      Variables$Mutation$UnFollowUser._({
        r'userId': userId,
        r'followerId': followerId,
      });

  Variables$Mutation$UnFollowUser._(this._$data);

  factory Variables$Mutation$UnFollowUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$followerId = data['followerId'];
    result$data['followerId'] = (l$followerId as String);
    return Variables$Mutation$UnFollowUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get followerId => (_$data['followerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$followerId = followerId;
    result$data['followerId'] = l$followerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UnFollowUser<Variables$Mutation$UnFollowUser>
      get copyWith => CopyWith$Variables$Mutation$UnFollowUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnFollowUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$followerId = followerId;
    final lOther$followerId = other.followerId;
    if (l$followerId != lOther$followerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$followerId = followerId;
    return Object.hashAll([
      l$userId,
      l$followerId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UnFollowUser<TRes> {
  factory CopyWith$Variables$Mutation$UnFollowUser(
    Variables$Mutation$UnFollowUser instance,
    TRes Function(Variables$Mutation$UnFollowUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UnFollowUser;

  factory CopyWith$Variables$Mutation$UnFollowUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnFollowUser;

  TRes call({
    String? userId,
    String? followerId,
  });
}

class _CopyWithImpl$Variables$Mutation$UnFollowUser<TRes>
    implements CopyWith$Variables$Mutation$UnFollowUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UnFollowUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnFollowUser _instance;

  final TRes Function(Variables$Mutation$UnFollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? followerId = _undefined,
  }) =>
      _then(Variables$Mutation$UnFollowUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (followerId != _undefined && followerId != null)
          'followerId': (followerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnFollowUser<TRes>
    implements CopyWith$Variables$Mutation$UnFollowUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnFollowUser(this._res);

  TRes _res;

  call({
    String? userId,
    String? followerId,
  }) =>
      _res;
}

class Mutation$UnFollowUser {
  Mutation$UnFollowUser({
    required this.unFollowUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnFollowUser.fromJson(Map<String, dynamic> json) {
    final l$unFollowUser = json['unFollowUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UnFollowUser(
      unFollowUser: Mutation$UnFollowUser$unFollowUser.fromJson(
          (l$unFollowUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnFollowUser$unFollowUser unFollowUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unFollowUser = unFollowUser;
    _resultData['unFollowUser'] = l$unFollowUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unFollowUser = unFollowUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unFollowUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnFollowUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$unFollowUser = unFollowUser;
    final lOther$unFollowUser = other.unFollowUser;
    if (l$unFollowUser != lOther$unFollowUser) {
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

extension UtilityExtension$Mutation$UnFollowUser on Mutation$UnFollowUser {
  CopyWith$Mutation$UnFollowUser<Mutation$UnFollowUser> get copyWith =>
      CopyWith$Mutation$UnFollowUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnFollowUser<TRes> {
  factory CopyWith$Mutation$UnFollowUser(
    Mutation$UnFollowUser instance,
    TRes Function(Mutation$UnFollowUser) then,
  ) = _CopyWithImpl$Mutation$UnFollowUser;

  factory CopyWith$Mutation$UnFollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnFollowUser;

  TRes call({
    Mutation$UnFollowUser$unFollowUser? unFollowUser,
    String? $__typename,
  });
  CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> get unFollowUser;
}

class _CopyWithImpl$Mutation$UnFollowUser<TRes>
    implements CopyWith$Mutation$UnFollowUser<TRes> {
  _CopyWithImpl$Mutation$UnFollowUser(
    this._instance,
    this._then,
  );

  final Mutation$UnFollowUser _instance;

  final TRes Function(Mutation$UnFollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unFollowUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnFollowUser(
        unFollowUser: unFollowUser == _undefined || unFollowUser == null
            ? _instance.unFollowUser
            : (unFollowUser as Mutation$UnFollowUser$unFollowUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> get unFollowUser {
    final local$unFollowUser = _instance.unFollowUser;
    return CopyWith$Mutation$UnFollowUser$unFollowUser(
        local$unFollowUser, (e) => call(unFollowUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UnFollowUser<TRes>
    implements CopyWith$Mutation$UnFollowUser<TRes> {
  _CopyWithStubImpl$Mutation$UnFollowUser(this._res);

  TRes _res;

  call({
    Mutation$UnFollowUser$unFollowUser? unFollowUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> get unFollowUser =>
      CopyWith$Mutation$UnFollowUser$unFollowUser.stub(_res);
}

const documentNodeMutationUnFollowUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnFollowUser'),
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
        variable: VariableNode(name: NameNode(value: 'followerId')),
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
        name: NameNode(value: 'unFollowUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'followerId'),
            value: VariableNode(name: NameNode(value: 'followerId')),
          ),
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
            name: NameNode(value: 'age'),
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
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_closed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'follower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'blocks'),
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
Mutation$UnFollowUser _parserFn$Mutation$UnFollowUser(
        Map<String, dynamic> data) =>
    Mutation$UnFollowUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UnFollowUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UnFollowUser?,
);

class Options$Mutation$UnFollowUser
    extends graphql.MutationOptions<Mutation$UnFollowUser> {
  Options$Mutation$UnFollowUser({
    String? operationName,
    required Variables$Mutation$UnFollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnFollowUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnFollowUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnFollowUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UnFollowUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnFollowUser,
          parserFn: _parserFn$Mutation$UnFollowUser,
        );

  final OnMutationCompleted$Mutation$UnFollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnFollowUser
    extends graphql.WatchQueryOptions<Mutation$UnFollowUser> {
  WatchOptions$Mutation$UnFollowUser({
    String? operationName,
    required Variables$Mutation$UnFollowUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnFollowUser? typedOptimisticResult,
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
          document: documentNodeMutationUnFollowUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnFollowUser,
        );
}

extension ClientExtension$Mutation$UnFollowUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnFollowUser>> mutate$UnFollowUser(
          Options$Mutation$UnFollowUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnFollowUser> watchMutation$UnFollowUser(
          WatchOptions$Mutation$UnFollowUser options) =>
      this.watchMutation(options);
}

class Mutation$UnFollowUser$HookResult {
  Mutation$UnFollowUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UnFollowUser runMutation;

  final graphql.QueryResult<Mutation$UnFollowUser> result;
}

Mutation$UnFollowUser$HookResult useMutation$UnFollowUser(
    [WidgetOptions$Mutation$UnFollowUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UnFollowUser());
  return Mutation$UnFollowUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UnFollowUser> useWatchMutation$UnFollowUser(
        WatchOptions$Mutation$UnFollowUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UnFollowUser
    extends graphql.MutationOptions<Mutation$UnFollowUser> {
  WidgetOptions$Mutation$UnFollowUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnFollowUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnFollowUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnFollowUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UnFollowUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnFollowUser,
          parserFn: _parserFn$Mutation$UnFollowUser,
        );

  final OnMutationCompleted$Mutation$UnFollowUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UnFollowUser
    = graphql.MultiSourceResult<Mutation$UnFollowUser> Function(
  Variables$Mutation$UnFollowUser, {
  Object? optimisticResult,
  Mutation$UnFollowUser? typedOptimisticResult,
});
typedef Builder$Mutation$UnFollowUser = widgets.Widget Function(
  RunMutation$Mutation$UnFollowUser,
  graphql.QueryResult<Mutation$UnFollowUser>?,
);

class Mutation$UnFollowUser$Widget
    extends graphql_flutter.Mutation<Mutation$UnFollowUser> {
  Mutation$UnFollowUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UnFollowUser? options,
    required Builder$Mutation$UnFollowUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UnFollowUser(),
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

class Mutation$UnFollowUser$unFollowUser {
  Mutation$UnFollowUser$unFollowUser({
    required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.date_created,
    required this.date_closed,
    required this.following,
    required this.follower,
    required this.blocks,
    this.$__typename = 'User',
  });

  factory Mutation$UnFollowUser$unFollowUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$avatar = json['avatar'];
    final l$date_created = json['date_created'];
    final l$date_closed = json['date_closed'];
    final l$following = json['following'];
    final l$follower = json['follower'];
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Mutation$UnFollowUser$unFollowUser(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      age: (l$age as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      email: (l$email as String),
      phone: (l$phone as String),
      avatar: (l$avatar as String),
      date_created: (l$date_created as String),
      date_closed: (l$date_closed as String),
      following:
          (l$following as List<dynamic>).map((e) => (e as String)).toList(),
      follower:
          (l$follower as List<dynamic>).map((e) => (e as String)).toList(),
      blocks: (l$blocks as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double gender;

  final double age;

  final String living;

  final String bio;

  final String email;

  final String phone;

  final String avatar;

  final String date_created;

  final String date_closed;

  final List<String> following;

  final List<String> follower;

  final List<String> blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$date_created = date_created;
    _resultData['date_created'] = l$date_created;
    final l$date_closed = date_closed;
    _resultData['date_closed'] = l$date_closed;
    final l$following = following;
    _resultData['following'] = l$following.map((e) => e).toList();
    final l$follower = follower;
    _resultData['follower'] = l$follower.map((e) => e).toList();
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$age = age;
    final l$living = living;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$avatar = avatar;
    final l$date_created = date_created;
    final l$date_closed = date_closed;
    final l$following = following;
    final l$follower = follower;
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$age,
      l$living,
      l$bio,
      l$email,
      l$phone,
      l$avatar,
      l$date_created,
      l$date_closed,
      Object.hashAll(l$following.map((v) => v)),
      Object.hashAll(l$follower.map((v) => v)),
      Object.hashAll(l$blocks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnFollowUser$unFollowUser) ||
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$date_created = date_created;
    final lOther$date_created = other.date_created;
    if (l$date_created != lOther$date_created) {
      return false;
    }
    final l$date_closed = date_closed;
    final lOther$date_closed = other.date_closed;
    if (l$date_closed != lOther$date_closed) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following.length != lOther$following.length) {
      return false;
    }
    for (int i = 0; i < l$following.length; i++) {
      final l$following$entry = l$following[i];
      final lOther$following$entry = lOther$following[i];
      if (l$following$entry != lOther$following$entry) {
        return false;
      }
    }
    final l$follower = follower;
    final lOther$follower = other.follower;
    if (l$follower.length != lOther$follower.length) {
      return false;
    }
    for (int i = 0; i < l$follower.length; i++) {
      final l$follower$entry = l$follower[i];
      final lOther$follower$entry = lOther$follower[i];
      if (l$follower$entry != lOther$follower$entry) {
        return false;
      }
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks.length != lOther$blocks.length) {
      return false;
    }
    for (int i = 0; i < l$blocks.length; i++) {
      final l$blocks$entry = l$blocks[i];
      final lOther$blocks$entry = lOther$blocks[i];
      if (l$blocks$entry != lOther$blocks$entry) {
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

extension UtilityExtension$Mutation$UnFollowUser$unFollowUser
    on Mutation$UnFollowUser$unFollowUser {
  CopyWith$Mutation$UnFollowUser$unFollowUser<
          Mutation$UnFollowUser$unFollowUser>
      get copyWith => CopyWith$Mutation$UnFollowUser$unFollowUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> {
  factory CopyWith$Mutation$UnFollowUser$unFollowUser(
    Mutation$UnFollowUser$unFollowUser instance,
    TRes Function(Mutation$UnFollowUser$unFollowUser) then,
  ) = _CopyWithImpl$Mutation$UnFollowUser$unFollowUser;

  factory CopyWith$Mutation$UnFollowUser$unFollowUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnFollowUser$unFollowUser;

  TRes call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnFollowUser$unFollowUser<TRes>
    implements CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> {
  _CopyWithImpl$Mutation$UnFollowUser$unFollowUser(
    this._instance,
    this._then,
  );

  final Mutation$UnFollowUser$unFollowUser _instance;

  final TRes Function(Mutation$UnFollowUser$unFollowUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? avatar = _undefined,
    Object? date_created = _undefined,
    Object? date_closed = _undefined,
    Object? following = _undefined,
    Object? follower = _undefined,
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnFollowUser$unFollowUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        date_created: date_created == _undefined || date_created == null
            ? _instance.date_created
            : (date_created as String),
        date_closed: date_closed == _undefined || date_closed == null
            ? _instance.date_closed
            : (date_closed as String),
        following: following == _undefined || following == null
            ? _instance.following
            : (following as List<String>),
        follower: follower == _undefined || follower == null
            ? _instance.follower
            : (follower as List<String>),
        blocks: blocks == _undefined || blocks == null
            ? _instance.blocks
            : (blocks as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnFollowUser$unFollowUser<TRes>
    implements CopyWith$Mutation$UnFollowUser$unFollowUser<TRes> {
  _CopyWithStubImpl$Mutation$UnFollowUser$unFollowUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$UserFollow {
  factory Variables$Subscription$UserFollow({required String userId}) =>
      Variables$Subscription$UserFollow._({
        r'userId': userId,
      });

  Variables$Subscription$UserFollow._(this._$data);

  factory Variables$Subscription$UserFollow.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Subscription$UserFollow._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Subscription$UserFollow<Variables$Subscription$UserFollow>
      get copyWith => CopyWith$Variables$Subscription$UserFollow(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$UserFollow) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Subscription$UserFollow<TRes> {
  factory CopyWith$Variables$Subscription$UserFollow(
    Variables$Subscription$UserFollow instance,
    TRes Function(Variables$Subscription$UserFollow) then,
  ) = _CopyWithImpl$Variables$Subscription$UserFollow;

  factory CopyWith$Variables$Subscription$UserFollow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$UserFollow;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Subscription$UserFollow<TRes>
    implements CopyWith$Variables$Subscription$UserFollow<TRes> {
  _CopyWithImpl$Variables$Subscription$UserFollow(
    this._instance,
    this._then,
  );

  final Variables$Subscription$UserFollow _instance;

  final TRes Function(Variables$Subscription$UserFollow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Subscription$UserFollow._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$UserFollow<TRes>
    implements CopyWith$Variables$Subscription$UserFollow<TRes> {
  _CopyWithStubImpl$Variables$Subscription$UserFollow(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Subscription$UserFollow {
  Subscription$UserFollow({required this.user_follow});

  factory Subscription$UserFollow.fromJson(Map<String, dynamic> json) {
    final l$user_follow = json['user_follow'];
    return Subscription$UserFollow(
        user_follow: Subscription$UserFollow$user_follow.fromJson(
            (l$user_follow as Map<String, dynamic>)));
  }

  final Subscription$UserFollow$user_follow user_follow;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user_follow = user_follow;
    _resultData['user_follow'] = l$user_follow.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user_follow = user_follow;
    return Object.hashAll([l$user_follow]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$UserFollow) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_follow = user_follow;
    final lOther$user_follow = other.user_follow;
    if (l$user_follow != lOther$user_follow) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$UserFollow on Subscription$UserFollow {
  CopyWith$Subscription$UserFollow<Subscription$UserFollow> get copyWith =>
      CopyWith$Subscription$UserFollow(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$UserFollow<TRes> {
  factory CopyWith$Subscription$UserFollow(
    Subscription$UserFollow instance,
    TRes Function(Subscription$UserFollow) then,
  ) = _CopyWithImpl$Subscription$UserFollow;

  factory CopyWith$Subscription$UserFollow.stub(TRes res) =
      _CopyWithStubImpl$Subscription$UserFollow;

  TRes call({Subscription$UserFollow$user_follow? user_follow});
  CopyWith$Subscription$UserFollow$user_follow<TRes> get user_follow;
}

class _CopyWithImpl$Subscription$UserFollow<TRes>
    implements CopyWith$Subscription$UserFollow<TRes> {
  _CopyWithImpl$Subscription$UserFollow(
    this._instance,
    this._then,
  );

  final Subscription$UserFollow _instance;

  final TRes Function(Subscription$UserFollow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user_follow = _undefined}) =>
      _then(Subscription$UserFollow(
          user_follow: user_follow == _undefined || user_follow == null
              ? _instance.user_follow
              : (user_follow as Subscription$UserFollow$user_follow)));

  CopyWith$Subscription$UserFollow$user_follow<TRes> get user_follow {
    final local$user_follow = _instance.user_follow;
    return CopyWith$Subscription$UserFollow$user_follow(
        local$user_follow, (e) => call(user_follow: e));
  }
}

class _CopyWithStubImpl$Subscription$UserFollow<TRes>
    implements CopyWith$Subscription$UserFollow<TRes> {
  _CopyWithStubImpl$Subscription$UserFollow(this._res);

  TRes _res;

  call({Subscription$UserFollow$user_follow? user_follow}) => _res;

  CopyWith$Subscription$UserFollow$user_follow<TRes> get user_follow =>
      CopyWith$Subscription$UserFollow$user_follow.stub(_res);
}

const documentNodeSubscriptionUserFollow = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'UserFollow'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'user_follow'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'age'),
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
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date_closed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'follower'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'blocks'),
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
Subscription$UserFollow _parserFn$Subscription$UserFollow(
        Map<String, dynamic> data) =>
    Subscription$UserFollow.fromJson(data);

class Options$Subscription$UserFollow
    extends graphql.SubscriptionOptions<Subscription$UserFollow> {
  Options$Subscription$UserFollow({
    String? operationName,
    required Variables$Subscription$UserFollow variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$UserFollow? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionUserFollow,
          parserFn: _parserFn$Subscription$UserFollow,
        );
}

class WatchOptions$Subscription$UserFollow
    extends graphql.WatchQueryOptions<Subscription$UserFollow> {
  WatchOptions$Subscription$UserFollow({
    String? operationName,
    required Variables$Subscription$UserFollow variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$UserFollow? typedOptimisticResult,
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
          document: documentNodeSubscriptionUserFollow,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$UserFollow,
        );
}

class FetchMoreOptions$Subscription$UserFollow
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$UserFollow({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$UserFollow variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionUserFollow,
        );
}

extension ClientExtension$Subscription$UserFollow on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$UserFollow>> subscribe$UserFollow(
          Options$Subscription$UserFollow options) =>
      this.subscribe(options);
  graphql.ObservableQuery<Subscription$UserFollow> watchSubscription$UserFollow(
          WatchOptions$Subscription$UserFollow options) =>
      this.watchQuery(options);
}

graphql.QueryResult<Subscription$UserFollow> useSubscription$UserFollow(
        Options$Subscription$UserFollow options) =>
    graphql_flutter.useSubscription(options);

class Subscription$UserFollow$Widget
    extends graphql_flutter.Subscription<Subscription$UserFollow> {
  Subscription$UserFollow$Widget({
    widgets.Key? key,
    required Options$Subscription$UserFollow options,
    required graphql_flutter.SubscriptionBuilder<Subscription$UserFollow>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$UserFollow>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options,
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$UserFollow$user_follow {
  Subscription$UserFollow$user_follow({
    required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.living,
    required this.bio,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.date_created,
    required this.date_closed,
    required this.following,
    required this.follower,
    required this.blocks,
  });

  factory Subscription$UserFollow$user_follow.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$living = json['living'];
    final l$bio = json['bio'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$avatar = json['avatar'];
    final l$date_created = json['date_created'];
    final l$date_closed = json['date_closed'];
    final l$following = json['following'];
    final l$follower = json['follower'];
    final l$blocks = json['blocks'];
    return Subscription$UserFollow$user_follow(
      id: (l$id as String),
      name: (l$name as String),
      gender: (l$gender as num).toDouble(),
      age: (l$age as num).toDouble(),
      living: (l$living as String),
      bio: (l$bio as String),
      email: (l$email as String),
      phone: (l$phone as String),
      avatar: (l$avatar as String),
      date_created: (l$date_created as String),
      date_closed: (l$date_closed as String),
      following:
          (l$following as List<dynamic>).map((e) => (e as String)).toList(),
      follower:
          (l$follower as List<dynamic>).map((e) => (e as String)).toList(),
      blocks: (l$blocks as List<dynamic>).map((e) => (e as String)).toList(),
    );
  }

  final String id;

  final String name;

  final double gender;

  final double age;

  final String living;

  final String bio;

  final String email;

  final String phone;

  final String avatar;

  final String date_created;

  final String date_closed;

  final List<String> following;

  final List<String> follower;

  final List<String> blocks;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$living = living;
    _resultData['living'] = l$living;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$date_created = date_created;
    _resultData['date_created'] = l$date_created;
    final l$date_closed = date_closed;
    _resultData['date_closed'] = l$date_closed;
    final l$following = following;
    _resultData['following'] = l$following.map((e) => e).toList();
    final l$follower = follower;
    _resultData['follower'] = l$follower.map((e) => e).toList();
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks.map((e) => e).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$gender = gender;
    final l$age = age;
    final l$living = living;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$avatar = avatar;
    final l$date_created = date_created;
    final l$date_closed = date_closed;
    final l$following = following;
    final l$follower = follower;
    final l$blocks = blocks;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$age,
      l$living,
      l$bio,
      l$email,
      l$phone,
      l$avatar,
      l$date_created,
      l$date_closed,
      Object.hashAll(l$following.map((v) => v)),
      Object.hashAll(l$follower.map((v) => v)),
      Object.hashAll(l$blocks.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$UserFollow$user_follow) ||
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$date_created = date_created;
    final lOther$date_created = other.date_created;
    if (l$date_created != lOther$date_created) {
      return false;
    }
    final l$date_closed = date_closed;
    final lOther$date_closed = other.date_closed;
    if (l$date_closed != lOther$date_closed) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following.length != lOther$following.length) {
      return false;
    }
    for (int i = 0; i < l$following.length; i++) {
      final l$following$entry = l$following[i];
      final lOther$following$entry = lOther$following[i];
      if (l$following$entry != lOther$following$entry) {
        return false;
      }
    }
    final l$follower = follower;
    final lOther$follower = other.follower;
    if (l$follower.length != lOther$follower.length) {
      return false;
    }
    for (int i = 0; i < l$follower.length; i++) {
      final l$follower$entry = l$follower[i];
      final lOther$follower$entry = lOther$follower[i];
      if (l$follower$entry != lOther$follower$entry) {
        return false;
      }
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks.length != lOther$blocks.length) {
      return false;
    }
    for (int i = 0; i < l$blocks.length; i++) {
      final l$blocks$entry = l$blocks[i];
      final lOther$blocks$entry = lOther$blocks[i];
      if (l$blocks$entry != lOther$blocks$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$UserFollow$user_follow
    on Subscription$UserFollow$user_follow {
  CopyWith$Subscription$UserFollow$user_follow<
          Subscription$UserFollow$user_follow>
      get copyWith => CopyWith$Subscription$UserFollow$user_follow(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UserFollow$user_follow<TRes> {
  factory CopyWith$Subscription$UserFollow$user_follow(
    Subscription$UserFollow$user_follow instance,
    TRes Function(Subscription$UserFollow$user_follow) then,
  ) = _CopyWithImpl$Subscription$UserFollow$user_follow;

  factory CopyWith$Subscription$UserFollow$user_follow.stub(TRes res) =
      _CopyWithStubImpl$Subscription$UserFollow$user_follow;

  TRes call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
  });
}

class _CopyWithImpl$Subscription$UserFollow$user_follow<TRes>
    implements CopyWith$Subscription$UserFollow$user_follow<TRes> {
  _CopyWithImpl$Subscription$UserFollow$user_follow(
    this._instance,
    this._then,
  );

  final Subscription$UserFollow$user_follow _instance;

  final TRes Function(Subscription$UserFollow$user_follow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? living = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? avatar = _undefined,
    Object? date_created = _undefined,
    Object? date_closed = _undefined,
    Object? following = _undefined,
    Object? follower = _undefined,
    Object? blocks = _undefined,
  }) =>
      _then(Subscription$UserFollow$user_follow(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as double),
        age: age == _undefined || age == null ? _instance.age : (age as double),
        living: living == _undefined || living == null
            ? _instance.living
            : (living as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as String),
        date_created: date_created == _undefined || date_created == null
            ? _instance.date_created
            : (date_created as String),
        date_closed: date_closed == _undefined || date_closed == null
            ? _instance.date_closed
            : (date_closed as String),
        following: following == _undefined || following == null
            ? _instance.following
            : (following as List<String>),
        follower: follower == _undefined || follower == null
            ? _instance.follower
            : (follower as List<String>),
        blocks: blocks == _undefined || blocks == null
            ? _instance.blocks
            : (blocks as List<String>),
      ));
}

class _CopyWithStubImpl$Subscription$UserFollow$user_follow<TRes>
    implements CopyWith$Subscription$UserFollow$user_follow<TRes> {
  _CopyWithStubImpl$Subscription$UserFollow$user_follow(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? gender,
    double? age,
    String? living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
    List<String>? following,
    List<String>? follower,
    List<String>? blocks,
  }) =>
      _res;
}
