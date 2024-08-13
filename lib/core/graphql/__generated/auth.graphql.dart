// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Login {
  factory Variables$Query$Login({
    required String username,
    required String password,
  }) =>
      Variables$Query$Login._({
        r'username': username,
        r'password': password,
      });

  Variables$Query$Login._(this._$data);

  factory Variables$Query$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Query$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Query$Login<Variables$Query$Login> get copyWith =>
      CopyWith$Variables$Query$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Query$Login<TRes> {
  factory CopyWith$Variables$Query$Login(
    Variables$Query$Login instance,
    TRes Function(Variables$Query$Login) then,
  ) = _CopyWithImpl$Variables$Query$Login;

  factory CopyWith$Variables$Query$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Login;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Variables$Query$Login<TRes>
    implements CopyWith$Variables$Query$Login<TRes> {
  _CopyWithImpl$Variables$Query$Login(
    this._instance,
    this._then,
  );

  final Variables$Query$Login _instance;

  final TRes Function(Variables$Query$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Query$Login._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Login<TRes>
    implements CopyWith$Variables$Query$Login<TRes> {
  _CopyWithStubImpl$Variables$Query$Login(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Query$Login {
  Query$Login({
    required this.login,
    this.$__typename = 'Query',
  });

  factory Query$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$Login(
      login: Query$Login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Login$login login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$Login on Query$Login {
  CopyWith$Query$Login<Query$Login> get copyWith => CopyWith$Query$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Login<TRes> {
  factory CopyWith$Query$Login(
    Query$Login instance,
    TRes Function(Query$Login) then,
  ) = _CopyWithImpl$Query$Login;

  factory CopyWith$Query$Login.stub(TRes res) = _CopyWithStubImpl$Query$Login;

  TRes call({
    Query$Login$login? login,
    String? $__typename,
  });
  CopyWith$Query$Login$login<TRes> get login;
}

class _CopyWithImpl$Query$Login<TRes> implements CopyWith$Query$Login<TRes> {
  _CopyWithImpl$Query$Login(
    this._instance,
    this._then,
  );

  final Query$Login _instance;

  final TRes Function(Query$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Login(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as Query$Login$login),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Login$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Query$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Query$Login<TRes>
    implements CopyWith$Query$Login<TRes> {
  _CopyWithStubImpl$Query$Login(this._res);

  TRes _res;

  call({
    Query$Login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Login$login<TRes> get login =>
      CopyWith$Query$Login$login.stub(_res);
}

const documentNodeQueryLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
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
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'access_token'),
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
Query$Login _parserFn$Query$Login(Map<String, dynamic> data) =>
    Query$Login.fromJson(data);
typedef OnQueryComplete$Query$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Login?,
);

class Options$Query$Login extends graphql.QueryOptions<Query$Login> {
  Options$Query$Login({
    String? operationName,
    required Variables$Query$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Login? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Login? onComplete,
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
                    data == null ? null : _parserFn$Query$Login(data),
                  ),
          onError: onError,
          document: documentNodeQueryLogin,
          parserFn: _parserFn$Query$Login,
        );

  final OnQueryComplete$Query$Login? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Login extends graphql.WatchQueryOptions<Query$Login> {
  WatchOptions$Query$Login({
    String? operationName,
    required Variables$Query$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Login? typedOptimisticResult,
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
          document: documentNodeQueryLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Login,
        );
}

class FetchMoreOptions$Query$Login extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Login({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Login variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryLogin,
        );
}

extension ClientExtension$Query$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Login>> query$Login(
          Options$Query$Login options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Login> watchQuery$Login(
          WatchOptions$Query$Login options) =>
      this.watchQuery(options);
  void writeQuery$Login({
    required Query$Login data,
    required Variables$Query$Login variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLogin),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Login? readQuery$Login({
    required Variables$Query$Login variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLogin),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Login.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Login> useQuery$Login(
        Options$Query$Login options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Login> useWatchQuery$Login(
        WatchOptions$Query$Login options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Login$Widget extends graphql_flutter.Query<Query$Login> {
  Query$Login$Widget({
    widgets.Key? key,
    required Options$Query$Login options,
    required graphql_flutter.QueryBuilder<Query$Login> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Login$login {
  Query$Login$login({
    required this.access_token,
    this.$__typename = 'AuthResponseDto',
  });

  factory Query$Login$login.fromJson(Map<String, dynamic> json) {
    final l$access_token = json['access_token'];
    final l$$__typename = json['__typename'];
    return Query$Login$login(
      access_token: (l$access_token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String access_token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$access_token = access_token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$access_token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Login$login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
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

extension UtilityExtension$Query$Login$login on Query$Login$login {
  CopyWith$Query$Login$login<Query$Login$login> get copyWith =>
      CopyWith$Query$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Login$login<TRes> {
  factory CopyWith$Query$Login$login(
    Query$Login$login instance,
    TRes Function(Query$Login$login) then,
  ) = _CopyWithImpl$Query$Login$login;

  factory CopyWith$Query$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Query$Login$login;

  TRes call({
    String? access_token,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Login$login<TRes>
    implements CopyWith$Query$Login$login<TRes> {
  _CopyWithImpl$Query$Login$login(
    this._instance,
    this._then,
  );

  final Query$Login$login _instance;

  final TRes Function(Query$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? access_token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Login$login(
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Login$login<TRes>
    implements CopyWith$Query$Login$login<TRes> {
  _CopyWithStubImpl$Query$Login$login(this._res);

  TRes _res;

  call({
    String? access_token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$Register {
  factory Variables$Mutation$Register({required Input$CreateUserDto data}) =>
      Variables$Mutation$Register._({
        r'data': data,
      });

  Variables$Mutation$Register._(this._$data);

  factory Variables$Mutation$Register.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CreateUserDto.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$Register._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateUserDto get data => (_$data['data'] as Input$CreateUserDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Register<Variables$Mutation$Register>
      get copyWith => CopyWith$Variables$Mutation$Register(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Register) ||
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

abstract class CopyWith$Variables$Mutation$Register<TRes> {
  factory CopyWith$Variables$Mutation$Register(
    Variables$Mutation$Register instance,
    TRes Function(Variables$Mutation$Register) then,
  ) = _CopyWithImpl$Variables$Mutation$Register;

  factory CopyWith$Variables$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Register;

  TRes call({Input$CreateUserDto? data});
}

class _CopyWithImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithImpl$Variables$Mutation$Register(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Register _instance;

  final TRes Function(Variables$Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$Register._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CreateUserDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Register(this._res);

  TRes _res;

  call({Input$CreateUserDto? data}) => _res;
}

class Mutation$Register {
  Mutation$Register({
    required this.register,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Register.fromJson(Map<String, dynamic> json) {
    final l$register = json['register'];
    final l$$__typename = json['__typename'];
    return Mutation$Register(
      register: Mutation$Register$register.fromJson(
          (l$register as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Register$register register;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$register = register;
    _resultData['register'] = l$register.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$register = register;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$register,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Register) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$register = register;
    final lOther$register = other.register;
    if (l$register != lOther$register) {
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

extension UtilityExtension$Mutation$Register on Mutation$Register {
  CopyWith$Mutation$Register<Mutation$Register> get copyWith =>
      CopyWith$Mutation$Register(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Register<TRes> {
  factory CopyWith$Mutation$Register(
    Mutation$Register instance,
    TRes Function(Mutation$Register) then,
  ) = _CopyWithImpl$Mutation$Register;

  factory CopyWith$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register;

  TRes call({
    Mutation$Register$register? register,
    String? $__typename,
  });
  CopyWith$Mutation$Register$register<TRes> get register;
}

class _CopyWithImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithImpl$Mutation$Register(
    this._instance,
    this._then,
  );

  final Mutation$Register _instance;

  final TRes Function(Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? register = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register(
        register: register == _undefined || register == null
            ? _instance.register
            : (register as Mutation$Register$register),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Register$register<TRes> get register {
    final local$register = _instance.register;
    return CopyWith$Mutation$Register$register(
        local$register, (e) => call(register: e));
  }
}

class _CopyWithStubImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithStubImpl$Mutation$Register(this._res);

  TRes _res;

  call({
    Mutation$Register$register? register,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Register$register<TRes> get register =>
      CopyWith$Mutation$Register$register.stub(_res);
}

const documentNodeMutationRegister = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Register'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateUserDto'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'register'),
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
            name: NameNode(value: 'access_token'),
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
Mutation$Register _parserFn$Mutation$Register(Map<String, dynamic> data) =>
    Mutation$Register.fromJson(data);
typedef OnMutationCompleted$Mutation$Register = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Register?,
);

class Options$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  Options$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Register? onCompleted,
    graphql.OnMutationUpdate<Mutation$Register>? update,
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
                    data == null ? null : _parserFn$Mutation$Register(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegister,
          parserFn: _parserFn$Mutation$Register,
        );

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Register
    extends graphql.WatchQueryOptions<Mutation$Register> {
  WatchOptions$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
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
          document: documentNodeMutationRegister,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Register,
        );
}

extension ClientExtension$Mutation$Register on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Register>> mutate$Register(
          Options$Mutation$Register options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Register> watchMutation$Register(
          WatchOptions$Mutation$Register options) =>
      this.watchMutation(options);
}

class Mutation$Register$HookResult {
  Mutation$Register$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Register runMutation;

  final graphql.QueryResult<Mutation$Register> result;
}

Mutation$Register$HookResult useMutation$Register(
    [WidgetOptions$Mutation$Register? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Register());
  return Mutation$Register$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Register> useWatchMutation$Register(
        WatchOptions$Mutation$Register options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  WidgetOptions$Mutation$Register({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Register? onCompleted,
    graphql.OnMutationUpdate<Mutation$Register>? update,
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
                    data == null ? null : _parserFn$Mutation$Register(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegister,
          parserFn: _parserFn$Mutation$Register,
        );

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Register
    = graphql.MultiSourceResult<Mutation$Register> Function(
  Variables$Mutation$Register, {
  Object? optimisticResult,
  Mutation$Register? typedOptimisticResult,
});
typedef Builder$Mutation$Register = widgets.Widget Function(
  RunMutation$Mutation$Register,
  graphql.QueryResult<Mutation$Register>?,
);

class Mutation$Register$Widget
    extends graphql_flutter.Mutation<Mutation$Register> {
  Mutation$Register$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Register? options,
    required Builder$Mutation$Register builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Register(),
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

class Mutation$Register$register {
  Mutation$Register$register({
    required this.access_token,
    this.$__typename = 'AuthResponseDto',
  });

  factory Mutation$Register$register.fromJson(Map<String, dynamic> json) {
    final l$access_token = json['access_token'];
    final l$$__typename = json['__typename'];
    return Mutation$Register$register(
      access_token: (l$access_token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String access_token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$access_token = access_token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$access_token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Register$register) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
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

extension UtilityExtension$Mutation$Register$register
    on Mutation$Register$register {
  CopyWith$Mutation$Register$register<Mutation$Register$register>
      get copyWith => CopyWith$Mutation$Register$register(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Register$register<TRes> {
  factory CopyWith$Mutation$Register$register(
    Mutation$Register$register instance,
    TRes Function(Mutation$Register$register) then,
  ) = _CopyWithImpl$Mutation$Register$register;

  factory CopyWith$Mutation$Register$register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register$register;

  TRes call({
    String? access_token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithImpl$Mutation$Register$register(
    this._instance,
    this._then,
  );

  final Mutation$Register$register _instance;

  final TRes Function(Mutation$Register$register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? access_token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register$register(
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Register$register<TRes>
    implements CopyWith$Mutation$Register$register<TRes> {
  _CopyWithStubImpl$Mutation$Register$register(this._res);

  TRes _res;

  call({
    String? access_token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ValidateToken {
  factory Variables$Query$ValidateToken({required String token}) =>
      Variables$Query$ValidateToken._({
        r'token': token,
      });

  Variables$Query$ValidateToken._(this._$data);

  factory Variables$Query$ValidateToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Query$ValidateToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Query$ValidateToken<Variables$Query$ValidateToken>
      get copyWith => CopyWith$Variables$Query$ValidateToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ValidateToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Query$ValidateToken<TRes> {
  factory CopyWith$Variables$Query$ValidateToken(
    Variables$Query$ValidateToken instance,
    TRes Function(Variables$Query$ValidateToken) then,
  ) = _CopyWithImpl$Variables$Query$ValidateToken;

  factory CopyWith$Variables$Query$ValidateToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ValidateToken;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Query$ValidateToken<TRes>
    implements CopyWith$Variables$Query$ValidateToken<TRes> {
  _CopyWithImpl$Variables$Query$ValidateToken(
    this._instance,
    this._then,
  );

  final Variables$Query$ValidateToken _instance;

  final TRes Function(Variables$Query$ValidateToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Query$ValidateToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ValidateToken<TRes>
    implements CopyWith$Variables$Query$ValidateToken<TRes> {
  _CopyWithStubImpl$Variables$Query$ValidateToken(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Query$ValidateToken {
  Query$ValidateToken({
    required this.validateToken,
    this.$__typename = 'Query',
  });

  factory Query$ValidateToken.fromJson(Map<String, dynamic> json) {
    final l$validateToken = json['validateToken'];
    final l$$__typename = json['__typename'];
    return Query$ValidateToken(
      validateToken: (l$validateToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String validateToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validateToken = validateToken;
    _resultData['validateToken'] = l$validateToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validateToken = validateToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validateToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ValidateToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$validateToken = validateToken;
    final lOther$validateToken = other.validateToken;
    if (l$validateToken != lOther$validateToken) {
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

extension UtilityExtension$Query$ValidateToken on Query$ValidateToken {
  CopyWith$Query$ValidateToken<Query$ValidateToken> get copyWith =>
      CopyWith$Query$ValidateToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ValidateToken<TRes> {
  factory CopyWith$Query$ValidateToken(
    Query$ValidateToken instance,
    TRes Function(Query$ValidateToken) then,
  ) = _CopyWithImpl$Query$ValidateToken;

  factory CopyWith$Query$ValidateToken.stub(TRes res) =
      _CopyWithStubImpl$Query$ValidateToken;

  TRes call({
    String? validateToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ValidateToken<TRes>
    implements CopyWith$Query$ValidateToken<TRes> {
  _CopyWithImpl$Query$ValidateToken(
    this._instance,
    this._then,
  );

  final Query$ValidateToken _instance;

  final TRes Function(Query$ValidateToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validateToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ValidateToken(
        validateToken: validateToken == _undefined || validateToken == null
            ? _instance.validateToken
            : (validateToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ValidateToken<TRes>
    implements CopyWith$Query$ValidateToken<TRes> {
  _CopyWithStubImpl$Query$ValidateToken(this._res);

  TRes _res;

  call({
    String? validateToken,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryValidateToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ValidateToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
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
        name: NameNode(value: 'validateToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'token'),
            value: VariableNode(name: NameNode(value: 'token')),
          )
        ],
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
]);
Query$ValidateToken _parserFn$Query$ValidateToken(Map<String, dynamic> data) =>
    Query$ValidateToken.fromJson(data);
typedef OnQueryComplete$Query$ValidateToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ValidateToken?,
);

class Options$Query$ValidateToken
    extends graphql.QueryOptions<Query$ValidateToken> {
  Options$Query$ValidateToken({
    String? operationName,
    required Variables$Query$ValidateToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ValidateToken? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ValidateToken? onComplete,
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
                    data == null ? null : _parserFn$Query$ValidateToken(data),
                  ),
          onError: onError,
          document: documentNodeQueryValidateToken,
          parserFn: _parserFn$Query$ValidateToken,
        );

  final OnQueryComplete$Query$ValidateToken? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ValidateToken
    extends graphql.WatchQueryOptions<Query$ValidateToken> {
  WatchOptions$Query$ValidateToken({
    String? operationName,
    required Variables$Query$ValidateToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ValidateToken? typedOptimisticResult,
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
          document: documentNodeQueryValidateToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ValidateToken,
        );
}

class FetchMoreOptions$Query$ValidateToken extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ValidateToken({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ValidateToken variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryValidateToken,
        );
}

extension ClientExtension$Query$ValidateToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ValidateToken>> query$ValidateToken(
          Options$Query$ValidateToken options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ValidateToken> watchQuery$ValidateToken(
          WatchOptions$Query$ValidateToken options) =>
      this.watchQuery(options);
  void writeQuery$ValidateToken({
    required Query$ValidateToken data,
    required Variables$Query$ValidateToken variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryValidateToken),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ValidateToken? readQuery$ValidateToken({
    required Variables$Query$ValidateToken variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryValidateToken),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ValidateToken.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ValidateToken> useQuery$ValidateToken(
        Options$Query$ValidateToken options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ValidateToken> useWatchQuery$ValidateToken(
        WatchOptions$Query$ValidateToken options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ValidateToken$Widget
    extends graphql_flutter.Query<Query$ValidateToken> {
  Query$ValidateToken$Widget({
    widgets.Key? key,
    required Options$Query$ValidateToken options,
    required graphql_flutter.QueryBuilder<Query$ValidateToken> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$UserNotExists {
  factory Variables$Query$UserNotExists({required String data}) =>
      Variables$Query$UserNotExists._({
        r'data': data,
      });

  Variables$Query$UserNotExists._(this._$data);

  factory Variables$Query$UserNotExists.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    return Variables$Query$UserNotExists._(result$data);
  }

  Map<String, dynamic> _$data;

  String get data => (_$data['data'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data;
    return result$data;
  }

  CopyWith$Variables$Query$UserNotExists<Variables$Query$UserNotExists>
      get copyWith => CopyWith$Variables$Query$UserNotExists(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserNotExists) ||
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

abstract class CopyWith$Variables$Query$UserNotExists<TRes> {
  factory CopyWith$Variables$Query$UserNotExists(
    Variables$Query$UserNotExists instance,
    TRes Function(Variables$Query$UserNotExists) then,
  ) = _CopyWithImpl$Variables$Query$UserNotExists;

  factory CopyWith$Variables$Query$UserNotExists.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserNotExists;

  TRes call({String? data});
}

class _CopyWithImpl$Variables$Query$UserNotExists<TRes>
    implements CopyWith$Variables$Query$UserNotExists<TRes> {
  _CopyWithImpl$Variables$Query$UserNotExists(
    this._instance,
    this._then,
  );

  final Variables$Query$UserNotExists _instance;

  final TRes Function(Variables$Query$UserNotExists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Query$UserNotExists._({
        ..._instance._$data,
        if (data != _undefined && data != null) 'data': (data as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserNotExists<TRes>
    implements CopyWith$Variables$Query$UserNotExists<TRes> {
  _CopyWithStubImpl$Variables$Query$UserNotExists(this._res);

  TRes _res;

  call({String? data}) => _res;
}

class Query$UserNotExists {
  Query$UserNotExists({
    required this.userNotExists,
    this.$__typename = 'Query',
  });

  factory Query$UserNotExists.fromJson(Map<String, dynamic> json) {
    final l$userNotExists = json['userNotExists'];
    final l$$__typename = json['__typename'];
    return Query$UserNotExists(
      userNotExists: (l$userNotExists as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool userNotExists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userNotExists = userNotExists;
    _resultData['userNotExists'] = l$userNotExists;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userNotExists = userNotExists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userNotExists,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserNotExists) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userNotExists = userNotExists;
    final lOther$userNotExists = other.userNotExists;
    if (l$userNotExists != lOther$userNotExists) {
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

extension UtilityExtension$Query$UserNotExists on Query$UserNotExists {
  CopyWith$Query$UserNotExists<Query$UserNotExists> get copyWith =>
      CopyWith$Query$UserNotExists(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserNotExists<TRes> {
  factory CopyWith$Query$UserNotExists(
    Query$UserNotExists instance,
    TRes Function(Query$UserNotExists) then,
  ) = _CopyWithImpl$Query$UserNotExists;

  factory CopyWith$Query$UserNotExists.stub(TRes res) =
      _CopyWithStubImpl$Query$UserNotExists;

  TRes call({
    bool? userNotExists,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotExists<TRes>
    implements CopyWith$Query$UserNotExists<TRes> {
  _CopyWithImpl$Query$UserNotExists(
    this._instance,
    this._then,
  );

  final Query$UserNotExists _instance;

  final TRes Function(Query$UserNotExists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userNotExists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotExists(
        userNotExists: userNotExists == _undefined || userNotExists == null
            ? _instance.userNotExists
            : (userNotExists as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotExists<TRes>
    implements CopyWith$Query$UserNotExists<TRes> {
  _CopyWithStubImpl$Query$UserNotExists(this._res);

  TRes _res;

  call({
    bool? userNotExists,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryUserNotExists = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserNotExists'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
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
        name: NameNode(value: 'userNotExists'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
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
]);
Query$UserNotExists _parserFn$Query$UserNotExists(Map<String, dynamic> data) =>
    Query$UserNotExists.fromJson(data);
typedef OnQueryComplete$Query$UserNotExists = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserNotExists?,
);

class Options$Query$UserNotExists
    extends graphql.QueryOptions<Query$UserNotExists> {
  Options$Query$UserNotExists({
    String? operationName,
    required Variables$Query$UserNotExists variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserNotExists? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserNotExists? onComplete,
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
                    data == null ? null : _parserFn$Query$UserNotExists(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserNotExists,
          parserFn: _parserFn$Query$UserNotExists,
        );

  final OnQueryComplete$Query$UserNotExists? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserNotExists
    extends graphql.WatchQueryOptions<Query$UserNotExists> {
  WatchOptions$Query$UserNotExists({
    String? operationName,
    required Variables$Query$UserNotExists variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserNotExists? typedOptimisticResult,
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
          document: documentNodeQueryUserNotExists,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserNotExists,
        );
}

class FetchMoreOptions$Query$UserNotExists extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserNotExists({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$UserNotExists variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryUserNotExists,
        );
}

extension ClientExtension$Query$UserNotExists on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserNotExists>> query$UserNotExists(
          Options$Query$UserNotExists options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$UserNotExists> watchQuery$UserNotExists(
          WatchOptions$Query$UserNotExists options) =>
      this.watchQuery(options);
  void writeQuery$UserNotExists({
    required Query$UserNotExists data,
    required Variables$Query$UserNotExists variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryUserNotExists),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserNotExists? readQuery$UserNotExists({
    required Variables$Query$UserNotExists variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserNotExists),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserNotExists.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserNotExists> useQuery$UserNotExists(
        Options$Query$UserNotExists options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$UserNotExists> useWatchQuery$UserNotExists(
        WatchOptions$Query$UserNotExists options) =>
    graphql_flutter.useWatchQuery(options);

class Query$UserNotExists$Widget
    extends graphql_flutter.Query<Query$UserNotExists> {
  Query$UserNotExists$Widget({
    widgets.Key? key,
    required Options$Query$UserNotExists options,
    required graphql_flutter.QueryBuilder<Query$UserNotExists> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
