// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$Login {
  factory Variables$Mutation$Login({
    required String username,
    required String password,
    required Input$DeviceDto device,
  }) =>
      Variables$Mutation$Login._({
        r'username': username,
        r'password': password,
        r'device': device,
      });

  Variables$Mutation$Login._(this._$data);

  factory Variables$Mutation$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$device = data['device'];
    result$data['device'] =
        Input$DeviceDto.fromJson((l$device as Map<String, dynamic>));
    return Variables$Mutation$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  Input$DeviceDto get device => (_$data['device'] as Input$DeviceDto);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    final l$device = device;
    result$data['device'] = l$device.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Login<Variables$Mutation$Login> get copyWith =>
      CopyWith$Variables$Mutation$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Login) ||
        runtimeType != other.runtimeType) {
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
    final l$device = device;
    final lOther$device = other.device;
    if (l$device != lOther$device) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    final l$device = device;
    return Object.hashAll([
      l$username,
      l$password,
      l$device,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Login<TRes> {
  factory CopyWith$Variables$Mutation$Login(
    Variables$Mutation$Login instance,
    TRes Function(Variables$Mutation$Login) then,
  ) = _CopyWithImpl$Variables$Mutation$Login;

  factory CopyWith$Variables$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Login;

  TRes call({
    String? username,
    String? password,
    Input$DeviceDto? device,
  });
}

class _CopyWithImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithImpl$Variables$Mutation$Login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Login _instance;

  final TRes Function(Variables$Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
    Object? device = _undefined,
  }) =>
      _then(Variables$Mutation$Login._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (device != _undefined && device != null)
          'device': (device as Input$DeviceDto),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Login(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
    Input$DeviceDto? device,
  }) =>
      _res;
}

class Mutation$Login {
  Mutation$Login({
    required this.login,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$Login(
      login: Mutation$Login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Login$login login;

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
    if (!(other is Mutation$Login) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Login on Mutation$Login {
  CopyWith$Mutation$Login<Mutation$Login> get copyWith =>
      CopyWith$Mutation$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login<TRes> {
  factory CopyWith$Mutation$Login(
    Mutation$Login instance,
    TRes Function(Mutation$Login) then,
  ) = _CopyWithImpl$Mutation$Login;

  factory CopyWith$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login;

  TRes call({
    Mutation$Login$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$Login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithImpl$Mutation$Login(
    this._instance,
    this._then,
  );

  final Mutation$Login _instance;

  final TRes Function(Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as Mutation$Login$login),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$Login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithStubImpl$Mutation$Login(this._res);

  TRes _res;

  call({
    Mutation$Login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$login<TRes> get login =>
      CopyWith$Mutation$Login$login.stub(_res);
}

const documentNodeMutationLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'device')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeviceDto'),
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
              ObjectFieldNode(
                name: NameNode(value: 'device'),
                value: VariableNode(name: NameNode(value: 'device')),
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
Mutation$Login _parserFn$Mutation$Login(Map<String, dynamic> data) =>
    Mutation$Login.fromJson(data);
typedef OnMutationCompleted$Mutation$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Login?,
);

class Options$Mutation$Login extends graphql.MutationOptions<Mutation$Login> {
  Options$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
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
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Login
    extends graphql.WatchQueryOptions<Mutation$Login> {
  WatchOptions$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
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
          document: documentNodeMutationLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Login,
        );
}

extension ClientExtension$Mutation$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Login>> mutate$Login(
          Options$Mutation$Login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Login> watchMutation$Login(
          WatchOptions$Mutation$Login options) =>
      this.watchMutation(options);
}

class Mutation$Login$HookResult {
  Mutation$Login$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Login runMutation;

  final graphql.QueryResult<Mutation$Login> result;
}

Mutation$Login$HookResult useMutation$Login(
    [WidgetOptions$Mutation$Login? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Login());
  return Mutation$Login$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Login> useWatchMutation$Login(
        WatchOptions$Mutation$Login options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Login
    extends graphql.MutationOptions<Mutation$Login> {
  WidgetOptions$Mutation$Login({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
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
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Login = graphql.MultiSourceResult<Mutation$Login>
    Function(
  Variables$Mutation$Login, {
  Object? optimisticResult,
  Mutation$Login? typedOptimisticResult,
});
typedef Builder$Mutation$Login = widgets.Widget Function(
  RunMutation$Mutation$Login,
  graphql.QueryResult<Mutation$Login>?,
);

class Mutation$Login$Widget extends graphql_flutter.Mutation<Mutation$Login> {
  Mutation$Login$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Login? options,
    required Builder$Mutation$Login builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Login(),
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

class Mutation$Login$login {
  Mutation$Login$login({
    required this.access_token,
    this.$__typename = 'AuthResponseDto',
  });

  factory Mutation$Login$login.fromJson(Map<String, dynamic> json) {
    final l$access_token = json['access_token'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$login(
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
    if (!(other is Mutation$Login$login) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Login$login on Mutation$Login$login {
  CopyWith$Mutation$Login$login<Mutation$Login$login> get copyWith =>
      CopyWith$Mutation$Login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$login<TRes> {
  factory CopyWith$Mutation$Login$login(
    Mutation$Login$login instance,
    TRes Function(Mutation$Login$login) then,
  ) = _CopyWithImpl$Mutation$Login$login;

  factory CopyWith$Mutation$Login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$login;

  TRes call({
    String? access_token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithImpl$Mutation$Login$login(
    this._instance,
    this._then,
  );

  final Mutation$Login$login _instance;

  final TRes Function(Mutation$Login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? access_token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$login(
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Login$login<TRes>
    implements CopyWith$Mutation$Login$login<TRes> {
  _CopyWithStubImpl$Mutation$Login$login(this._res);

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

class Variables$Mutation$Logout {
  factory Variables$Mutation$Logout({required String data}) =>
      Variables$Mutation$Logout._({
        r'data': data,
      });

  Variables$Mutation$Logout._(this._$data);

  factory Variables$Mutation$Logout.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    return Variables$Mutation$Logout._(result$data);
  }

  Map<String, dynamic> _$data;

  String get data => (_$data['data'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data;
    return result$data;
  }

  CopyWith$Variables$Mutation$Logout<Variables$Mutation$Logout> get copyWith =>
      CopyWith$Variables$Mutation$Logout(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Logout) ||
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

abstract class CopyWith$Variables$Mutation$Logout<TRes> {
  factory CopyWith$Variables$Mutation$Logout(
    Variables$Mutation$Logout instance,
    TRes Function(Variables$Mutation$Logout) then,
  ) = _CopyWithImpl$Variables$Mutation$Logout;

  factory CopyWith$Variables$Mutation$Logout.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Logout;

  TRes call({String? data});
}

class _CopyWithImpl$Variables$Mutation$Logout<TRes>
    implements CopyWith$Variables$Mutation$Logout<TRes> {
  _CopyWithImpl$Variables$Mutation$Logout(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Logout _instance;

  final TRes Function(Variables$Mutation$Logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Variables$Mutation$Logout._({
        ..._instance._$data,
        if (data != _undefined && data != null) 'data': (data as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Logout<TRes>
    implements CopyWith$Variables$Mutation$Logout<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Logout(this._res);

  TRes _res;

  call({String? data}) => _res;
}

class Mutation$Logout {
  Mutation$Logout({
    required this.logout,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Logout.fromJson(Map<String, dynamic> json) {
    final l$logout = json['logout'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout(
      logout: (l$logout as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool logout;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logout = logout;
    _resultData['logout'] = l$logout;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logout = logout;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logout,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Logout) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logout = logout;
    final lOther$logout = other.logout;
    if (l$logout != lOther$logout) {
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

extension UtilityExtension$Mutation$Logout on Mutation$Logout {
  CopyWith$Mutation$Logout<Mutation$Logout> get copyWith =>
      CopyWith$Mutation$Logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout<TRes> {
  factory CopyWith$Mutation$Logout(
    Mutation$Logout instance,
    TRes Function(Mutation$Logout) then,
  ) = _CopyWithImpl$Mutation$Logout;

  factory CopyWith$Mutation$Logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout;

  TRes call({
    bool? logout,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithImpl$Mutation$Logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout _instance;

  final TRes Function(Mutation$Logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logout = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout(
        logout: logout == _undefined || logout == null
            ? _instance.logout
            : (logout as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout(this._res);

  TRes _res;

  call({
    bool? logout,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationLogout = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Logout'),
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
        name: NameNode(value: 'logout'),
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
Mutation$Logout _parserFn$Mutation$Logout(Map<String, dynamic> data) =>
    Mutation$Logout.fromJson(data);
typedef OnMutationCompleted$Mutation$Logout = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Logout?,
);

class Options$Mutation$Logout extends graphql.MutationOptions<Mutation$Logout> {
  Options$Mutation$Logout({
    String? operationName,
    required Variables$Mutation$Logout variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Logout? onCompleted,
    graphql.OnMutationUpdate<Mutation$Logout>? update,
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
                    data == null ? null : _parserFn$Mutation$Logout(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogout,
          parserFn: _parserFn$Mutation$Logout,
        );

  final OnMutationCompleted$Mutation$Logout? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Logout
    extends graphql.WatchQueryOptions<Mutation$Logout> {
  WatchOptions$Mutation$Logout({
    String? operationName,
    required Variables$Mutation$Logout variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
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
          document: documentNodeMutationLogout,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Logout,
        );
}

extension ClientExtension$Mutation$Logout on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Logout>> mutate$Logout(
          Options$Mutation$Logout options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Logout> watchMutation$Logout(
          WatchOptions$Mutation$Logout options) =>
      this.watchMutation(options);
}

class Mutation$Logout$HookResult {
  Mutation$Logout$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Logout runMutation;

  final graphql.QueryResult<Mutation$Logout> result;
}

Mutation$Logout$HookResult useMutation$Logout(
    [WidgetOptions$Mutation$Logout? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Logout());
  return Mutation$Logout$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Logout> useWatchMutation$Logout(
        WatchOptions$Mutation$Logout options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Logout
    extends graphql.MutationOptions<Mutation$Logout> {
  WidgetOptions$Mutation$Logout({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Logout? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Logout? onCompleted,
    graphql.OnMutationUpdate<Mutation$Logout>? update,
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
                    data == null ? null : _parserFn$Mutation$Logout(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogout,
          parserFn: _parserFn$Mutation$Logout,
        );

  final OnMutationCompleted$Mutation$Logout? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Logout = graphql.MultiSourceResult<Mutation$Logout>
    Function(
  Variables$Mutation$Logout, {
  Object? optimisticResult,
  Mutation$Logout? typedOptimisticResult,
});
typedef Builder$Mutation$Logout = widgets.Widget Function(
  RunMutation$Mutation$Logout,
  graphql.QueryResult<Mutation$Logout>?,
);

class Mutation$Logout$Widget extends graphql_flutter.Mutation<Mutation$Logout> {
  Mutation$Logout$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Logout? options,
    required Builder$Mutation$Logout builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Logout(),
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
