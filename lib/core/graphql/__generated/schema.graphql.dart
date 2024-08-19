// GENERATED FILE
// DO NOT MODIFY
class Input$LoginDto {
  factory Input$LoginDto({
    required String username,
    required String password,
  }) =>
      Input$LoginDto._({
        r'username': username,
        r'password': password,
      });

  Input$LoginDto._(this._$data);

  factory Input$LoginDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginDto._(result$data);
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

  CopyWith$Input$LoginDto<Input$LoginDto> get copyWith =>
      CopyWith$Input$LoginDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginDto) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$LoginDto<TRes> {
  factory CopyWith$Input$LoginDto(
    Input$LoginDto instance,
    TRes Function(Input$LoginDto) then,
  ) = _CopyWithImpl$Input$LoginDto;

  factory CopyWith$Input$LoginDto.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginDto;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginDto<TRes>
    implements CopyWith$Input$LoginDto<TRes> {
  _CopyWithImpl$Input$LoginDto(
    this._instance,
    this._then,
  );

  final Input$LoginDto _instance;

  final TRes Function(Input$LoginDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginDto._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginDto<TRes>
    implements CopyWith$Input$LoginDto<TRes> {
  _CopyWithStubImpl$Input$LoginDto(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Input$UpdateUserDto {
  factory Input$UpdateUserDto({
    required String id,
    required String name,
    required double gender,
    required double age,
    required String living,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
  }) =>
      Input$UpdateUserDto._({
        r'id': id,
        r'name': name,
        r'gender': gender,
        r'age': age,
        r'living': living,
        if (bio != null) r'bio': bio,
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (avatar != null) r'avatar': avatar,
      });

  Input$UpdateUserDto._(this._$data);

  factory Input$UpdateUserDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$gender = data['gender'];
    result$data['gender'] = (l$gender as num).toDouble();
    final l$age = data['age'];
    result$data['age'] = (l$age as num).toDouble();
    final l$living = data['living'];
    result$data['living'] = (l$living as String);
    if (data.containsKey('bio')) {
      final l$bio = data['bio'];
      result$data['bio'] = (l$bio as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    return Input$UpdateUserDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  double get gender => (_$data['gender'] as double);

  double get age => (_$data['age'] as double);

  String get living => (_$data['living'] as String);

  String? get bio => (_$data['bio'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get avatar => (_$data['avatar'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$gender = gender;
    result$data['gender'] = l$gender;
    final l$age = age;
    result$data['age'] = l$age;
    final l$living = living;
    result$data['living'] = l$living;
    if (_$data.containsKey('bio')) {
      final l$bio = bio;
      result$data['bio'] = l$bio;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserDto<Input$UpdateUserDto> get copyWith =>
      CopyWith$Input$UpdateUserDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateUserDto) || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('bio') != other._$data.containsKey('bio')) {
      return false;
    }
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    return true;
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
    return Object.hashAll([
      l$id,
      l$name,
      l$gender,
      l$age,
      l$living,
      _$data.containsKey('bio') ? l$bio : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('avatar') ? l$avatar : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserDto<TRes> {
  factory CopyWith$Input$UpdateUserDto(
    Input$UpdateUserDto instance,
    TRes Function(Input$UpdateUserDto) then,
  ) = _CopyWithImpl$Input$UpdateUserDto;

  factory CopyWith$Input$UpdateUserDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserDto;

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
  });
}

class _CopyWithImpl$Input$UpdateUserDto<TRes>
    implements CopyWith$Input$UpdateUserDto<TRes> {
  _CopyWithImpl$Input$UpdateUserDto(
    this._instance,
    this._then,
  );

  final Input$UpdateUserDto _instance;

  final TRes Function(Input$UpdateUserDto) _then;

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
  }) =>
      _then(Input$UpdateUserDto._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (gender != _undefined && gender != null)
          'gender': (gender as double),
        if (age != _undefined && age != null) 'age': (age as double),
        if (living != _undefined && living != null)
          'living': (living as String),
        if (bio != _undefined) 'bio': (bio as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (avatar != _undefined) 'avatar': (avatar as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserDto<TRes>
    implements CopyWith$Input$UpdateUserDto<TRes> {
  _CopyWithStubImpl$Input$UpdateUserDto(this._res);

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
  }) =>
      _res;
}

class Input$CreatePostDto {
  factory Input$CreatePostDto({
    required String name,
    required String image,
    required double nop_eat,
    required String prepare_time,
    required String category,
    required List<String> ingredients,
    List<Input$CreateStepDto>? steps,
    required String owner_id,
  }) =>
      Input$CreatePostDto._({
        r'name': name,
        r'image': image,
        r'nop_eat': nop_eat,
        r'prepare_time': prepare_time,
        r'category': category,
        r'ingredients': ingredients,
        if (steps != null) r'steps': steps,
        r'owner_id': owner_id,
      });

  Input$CreatePostDto._(this._$data);

  factory Input$CreatePostDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$image = data['image'];
    result$data['image'] = (l$image as String);
    final l$nop_eat = data['nop_eat'];
    result$data['nop_eat'] = (l$nop_eat as num).toDouble();
    final l$prepare_time = data['prepare_time'];
    result$data['prepare_time'] = (l$prepare_time as String);
    final l$category = data['category'];
    result$data['category'] = (l$category as String);
    final l$ingredients = data['ingredients'];
    result$data['ingredients'] =
        (l$ingredients as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('steps')) {
      final l$steps = data['steps'];
      result$data['steps'] = (l$steps as List<dynamic>)
          .map((e) => Input$CreateStepDto.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    final l$owner_id = data['owner_id'];
    result$data['owner_id'] = (l$owner_id as String);
    return Input$CreatePostDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get image => (_$data['image'] as String);

  double get nop_eat => (_$data['nop_eat'] as double);

  String get prepare_time => (_$data['prepare_time'] as String);

  String get category => (_$data['category'] as String);

  List<String> get ingredients => (_$data['ingredients'] as List<String>);

  List<Input$CreateStepDto>? get steps =>
      (_$data['steps'] as List<Input$CreateStepDto>?);

  String get owner_id => (_$data['owner_id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$image = image;
    result$data['image'] = l$image;
    final l$nop_eat = nop_eat;
    result$data['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    result$data['prepare_time'] = l$prepare_time;
    final l$category = category;
    result$data['category'] = l$category;
    final l$ingredients = ingredients;
    result$data['ingredients'] = l$ingredients.map((e) => e).toList();
    if (_$data.containsKey('steps')) {
      final l$steps = steps;
      result$data['steps'] = (l$steps as List<Input$CreateStepDto>)
          .map((e) => e.toJson())
          .toList();
    }
    final l$owner_id = owner_id;
    result$data['owner_id'] = l$owner_id;
    return result$data;
  }

  CopyWith$Input$CreatePostDto<Input$CreatePostDto> get copyWith =>
      CopyWith$Input$CreatePostDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreatePostDto) || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('steps') != other._$data.containsKey('steps')) {
      return false;
    }
    if (l$steps != null && lOther$steps != null) {
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
    } else if (l$steps != lOther$steps) {
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
    final l$name = name;
    final l$image = image;
    final l$nop_eat = nop_eat;
    final l$prepare_time = prepare_time;
    final l$category = category;
    final l$ingredients = ingredients;
    final l$steps = steps;
    final l$owner_id = owner_id;
    return Object.hashAll([
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      _$data.containsKey('steps')
          ? l$steps == null
              ? null
              : Object.hashAll(l$steps.map((v) => v))
          : const {},
      l$owner_id,
    ]);
  }
}

abstract class CopyWith$Input$CreatePostDto<TRes> {
  factory CopyWith$Input$CreatePostDto(
    Input$CreatePostDto instance,
    TRes Function(Input$CreatePostDto) then,
  ) = _CopyWithImpl$Input$CreatePostDto;

  factory CopyWith$Input$CreatePostDto.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePostDto;

  TRes call({
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Input$CreateStepDto>? steps,
    String? owner_id,
  });
  TRes steps(
      Iterable<Input$CreateStepDto>? Function(
              Iterable<CopyWith$Input$CreateStepDto<Input$CreateStepDto>>?)
          _fn);
}

class _CopyWithImpl$Input$CreatePostDto<TRes>
    implements CopyWith$Input$CreatePostDto<TRes> {
  _CopyWithImpl$Input$CreatePostDto(
    this._instance,
    this._then,
  );

  final Input$CreatePostDto _instance;

  final TRes Function(Input$CreatePostDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? nop_eat = _undefined,
    Object? prepare_time = _undefined,
    Object? category = _undefined,
    Object? ingredients = _undefined,
    Object? steps = _undefined,
    Object? owner_id = _undefined,
  }) =>
      _then(Input$CreatePostDto._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (image != _undefined && image != null) 'image': (image as String),
        if (nop_eat != _undefined && nop_eat != null)
          'nop_eat': (nop_eat as double),
        if (prepare_time != _undefined && prepare_time != null)
          'prepare_time': (prepare_time as String),
        if (category != _undefined && category != null)
          'category': (category as String),
        if (ingredients != _undefined && ingredients != null)
          'ingredients': (ingredients as List<String>),
        if (steps != _undefined && steps != null)
          'steps': (steps as List<Input$CreateStepDto>),
        if (owner_id != _undefined && owner_id != null)
          'owner_id': (owner_id as String),
      }));

  TRes steps(
          Iterable<Input$CreateStepDto>? Function(
                  Iterable<CopyWith$Input$CreateStepDto<Input$CreateStepDto>>?)
              _fn) =>
      call(
          steps: _fn(_instance.steps?.map((e) => CopyWith$Input$CreateStepDto(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$CreatePostDto<TRes>
    implements CopyWith$Input$CreatePostDto<TRes> {
  _CopyWithStubImpl$Input$CreatePostDto(this._res);

  TRes _res;

  call({
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Input$CreateStepDto>? steps,
    String? owner_id,
  }) =>
      _res;

  steps(_fn) => _res;
}

class Input$CreateStepDto {
  factory Input$CreateStepDto({
    required String content,
    List<String>? medias,
  }) =>
      Input$CreateStepDto._({
        r'content': content,
        if (medias != null) r'medias': medias,
      });

  Input$CreateStepDto._(this._$data);

  factory Input$CreateStepDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    if (data.containsKey('medias')) {
      final l$medias = data['medias'];
      result$data['medias'] =
          (l$medias as List<dynamic>).map((e) => (e as String)).toList();
    }
    return Input$CreateStepDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get content => (_$data['content'] as String);

  List<String>? get medias => (_$data['medias'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$content = content;
    result$data['content'] = l$content;
    if (_$data.containsKey('medias')) {
      final l$medias = medias;
      result$data['medias'] = (l$medias as List<String>).map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateStepDto<Input$CreateStepDto> get copyWith =>
      CopyWith$Input$CreateStepDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateStepDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$medias = medias;
    final lOther$medias = other.medias;
    if (_$data.containsKey('medias') != other._$data.containsKey('medias')) {
      return false;
    }
    if (l$medias != null && lOther$medias != null) {
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
    } else if (l$medias != lOther$medias) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$medias = medias;
    return Object.hashAll([
      l$content,
      _$data.containsKey('medias')
          ? l$medias == null
              ? null
              : Object.hashAll(l$medias.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateStepDto<TRes> {
  factory CopyWith$Input$CreateStepDto(
    Input$CreateStepDto instance,
    TRes Function(Input$CreateStepDto) then,
  ) = _CopyWithImpl$Input$CreateStepDto;

  factory CopyWith$Input$CreateStepDto.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateStepDto;

  TRes call({
    String? content,
    List<String>? medias,
  });
}

class _CopyWithImpl$Input$CreateStepDto<TRes>
    implements CopyWith$Input$CreateStepDto<TRes> {
  _CopyWithImpl$Input$CreateStepDto(
    this._instance,
    this._then,
  );

  final Input$CreateStepDto _instance;

  final TRes Function(Input$CreateStepDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? medias = _undefined,
  }) =>
      _then(Input$CreateStepDto._({
        ..._instance._$data,
        if (content != _undefined && content != null)
          'content': (content as String),
        if (medias != _undefined && medias != null)
          'medias': (medias as List<String>),
      }));
}

class _CopyWithStubImpl$Input$CreateStepDto<TRes>
    implements CopyWith$Input$CreateStepDto<TRes> {
  _CopyWithStubImpl$Input$CreateStepDto(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? medias,
  }) =>
      _res;
}

class Input$UpdatePostDto {
  factory Input$UpdatePostDto({
    required String id,
    required String name,
    required String image,
    required double nop_eat,
    required String prepare_time,
    required String category,
    required List<String> ingredients,
    required List<Input$CreateStepDto> steps,
  }) =>
      Input$UpdatePostDto._({
        r'id': id,
        r'name': name,
        r'image': image,
        r'nop_eat': nop_eat,
        r'prepare_time': prepare_time,
        r'category': category,
        r'ingredients': ingredients,
        r'steps': steps,
      });

  Input$UpdatePostDto._(this._$data);

  factory Input$UpdatePostDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$image = data['image'];
    result$data['image'] = (l$image as String);
    final l$nop_eat = data['nop_eat'];
    result$data['nop_eat'] = (l$nop_eat as num).toDouble();
    final l$prepare_time = data['prepare_time'];
    result$data['prepare_time'] = (l$prepare_time as String);
    final l$category = data['category'];
    result$data['category'] = (l$category as String);
    final l$ingredients = data['ingredients'];
    result$data['ingredients'] =
        (l$ingredients as List<dynamic>).map((e) => (e as String)).toList();
    final l$steps = data['steps'];
    result$data['steps'] = (l$steps as List<dynamic>)
        .map((e) => Input$CreateStepDto.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$UpdatePostDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  String get image => (_$data['image'] as String);

  double get nop_eat => (_$data['nop_eat'] as double);

  String get prepare_time => (_$data['prepare_time'] as String);

  String get category => (_$data['category'] as String);

  List<String> get ingredients => (_$data['ingredients'] as List<String>);

  List<Input$CreateStepDto> get steps =>
      (_$data['steps'] as List<Input$CreateStepDto>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$image = image;
    result$data['image'] = l$image;
    final l$nop_eat = nop_eat;
    result$data['nop_eat'] = l$nop_eat;
    final l$prepare_time = prepare_time;
    result$data['prepare_time'] = l$prepare_time;
    final l$category = category;
    result$data['category'] = l$category;
    final l$ingredients = ingredients;
    result$data['ingredients'] = l$ingredients.map((e) => e).toList();
    final l$steps = steps;
    result$data['steps'] = l$steps.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$UpdatePostDto<Input$UpdatePostDto> get copyWith =>
      CopyWith$Input$UpdatePostDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdatePostDto) || runtimeType != other.runtimeType) {
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
    return true;
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
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$nop_eat,
      l$prepare_time,
      l$category,
      Object.hashAll(l$ingredients.map((v) => v)),
      Object.hashAll(l$steps.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$UpdatePostDto<TRes> {
  factory CopyWith$Input$UpdatePostDto(
    Input$UpdatePostDto instance,
    TRes Function(Input$UpdatePostDto) then,
  ) = _CopyWithImpl$Input$UpdatePostDto;

  factory CopyWith$Input$UpdatePostDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePostDto;

  TRes call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Input$CreateStepDto>? steps,
  });
  TRes steps(
      Iterable<Input$CreateStepDto> Function(
              Iterable<CopyWith$Input$CreateStepDto<Input$CreateStepDto>>)
          _fn);
}

class _CopyWithImpl$Input$UpdatePostDto<TRes>
    implements CopyWith$Input$UpdatePostDto<TRes> {
  _CopyWithImpl$Input$UpdatePostDto(
    this._instance,
    this._then,
  );

  final Input$UpdatePostDto _instance;

  final TRes Function(Input$UpdatePostDto) _then;

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
  }) =>
      _then(Input$UpdatePostDto._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (image != _undefined && image != null) 'image': (image as String),
        if (nop_eat != _undefined && nop_eat != null)
          'nop_eat': (nop_eat as double),
        if (prepare_time != _undefined && prepare_time != null)
          'prepare_time': (prepare_time as String),
        if (category != _undefined && category != null)
          'category': (category as String),
        if (ingredients != _undefined && ingredients != null)
          'ingredients': (ingredients as List<String>),
        if (steps != _undefined && steps != null)
          'steps': (steps as List<Input$CreateStepDto>),
      }));

  TRes steps(
          Iterable<Input$CreateStepDto> Function(
                  Iterable<CopyWith$Input$CreateStepDto<Input$CreateStepDto>>)
              _fn) =>
      call(
          steps: _fn(_instance.steps.map((e) => CopyWith$Input$CreateStepDto(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$UpdatePostDto<TRes>
    implements CopyWith$Input$UpdatePostDto<TRes> {
  _CopyWithStubImpl$Input$UpdatePostDto(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    double? nop_eat,
    String? prepare_time,
    String? category,
    List<String>? ingredients,
    List<Input$CreateStepDto>? steps,
  }) =>
      _res;

  steps(_fn) => _res;
}

class Input$UpdateEmojiDto {
  factory Input$UpdateEmojiDto({
    required String postId,
    required String userId,
    required String typeEmoji,
  }) =>
      Input$UpdateEmojiDto._({
        r'postId': postId,
        r'userId': userId,
        r'typeEmoji': typeEmoji,
      });

  Input$UpdateEmojiDto._(this._$data);

  factory Input$UpdateEmojiDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$typeEmoji = data['typeEmoji'];
    result$data['typeEmoji'] = (l$typeEmoji as String);
    return Input$UpdateEmojiDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  String get userId => (_$data['userId'] as String);

  String get typeEmoji => (_$data['typeEmoji'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$typeEmoji = typeEmoji;
    result$data['typeEmoji'] = l$typeEmoji;
    return result$data;
  }

  CopyWith$Input$UpdateEmojiDto<Input$UpdateEmojiDto> get copyWith =>
      CopyWith$Input$UpdateEmojiDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateEmojiDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$typeEmoji = typeEmoji;
    final lOther$typeEmoji = other.typeEmoji;
    if (l$typeEmoji != lOther$typeEmoji) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    final l$userId = userId;
    final l$typeEmoji = typeEmoji;
    return Object.hashAll([
      l$postId,
      l$userId,
      l$typeEmoji,
    ]);
  }
}

abstract class CopyWith$Input$UpdateEmojiDto<TRes> {
  factory CopyWith$Input$UpdateEmojiDto(
    Input$UpdateEmojiDto instance,
    TRes Function(Input$UpdateEmojiDto) then,
  ) = _CopyWithImpl$Input$UpdateEmojiDto;

  factory CopyWith$Input$UpdateEmojiDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateEmojiDto;

  TRes call({
    String? postId,
    String? userId,
    String? typeEmoji,
  });
}

class _CopyWithImpl$Input$UpdateEmojiDto<TRes>
    implements CopyWith$Input$UpdateEmojiDto<TRes> {
  _CopyWithImpl$Input$UpdateEmojiDto(
    this._instance,
    this._then,
  );

  final Input$UpdateEmojiDto _instance;

  final TRes Function(Input$UpdateEmojiDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postId = _undefined,
    Object? userId = _undefined,
    Object? typeEmoji = _undefined,
  }) =>
      _then(Input$UpdateEmojiDto._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (typeEmoji != _undefined && typeEmoji != null)
          'typeEmoji': (typeEmoji as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateEmojiDto<TRes>
    implements CopyWith$Input$UpdateEmojiDto<TRes> {
  _CopyWithStubImpl$Input$UpdateEmojiDto(this._res);

  TRes _res;

  call({
    String? postId,
    String? userId,
    String? typeEmoji,
  }) =>
      _res;
}

class Input$CreateCommentDto {
  factory Input$CreateCommentDto({
    required String user_id,
    required String post_id,
    required String content,
    String? image,
    required String date_time_comment,
  }) =>
      Input$CreateCommentDto._({
        r'user_id': user_id,
        r'post_id': post_id,
        r'content': content,
        if (image != null) r'image': image,
        r'date_time_comment': date_time_comment,
      });

  Input$CreateCommentDto._(this._$data);

  factory Input$CreateCommentDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$post_id = data['post_id'];
    result$data['post_id'] = (l$post_id as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String);
    }
    final l$date_time_comment = data['date_time_comment'];
    result$data['date_time_comment'] = (l$date_time_comment as String);
    return Input$CreateCommentDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user_id => (_$data['user_id'] as String);

  String get post_id => (_$data['post_id'] as String);

  String get content => (_$data['content'] as String);

  String? get image => (_$data['image'] as String?);

  String get date_time_comment => (_$data['date_time_comment'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$post_id = post_id;
    result$data['post_id'] = l$post_id;
    final l$content = content;
    result$data['content'] = l$content;
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = (l$image as String);
    }
    final l$date_time_comment = date_time_comment;
    result$data['date_time_comment'] = l$date_time_comment;
    return result$data;
  }

  CopyWith$Input$CreateCommentDto<Input$CreateCommentDto> get copyWith =>
      CopyWith$Input$CreateCommentDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCommentDto) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$date_time_comment = date_time_comment;
    final lOther$date_time_comment = other.date_time_comment;
    if (l$date_time_comment != lOther$date_time_comment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$post_id = post_id;
    final l$content = content;
    final l$image = image;
    final l$date_time_comment = date_time_comment;
    return Object.hashAll([
      l$user_id,
      l$post_id,
      l$content,
      _$data.containsKey('image') ? l$image : const {},
      l$date_time_comment,
    ]);
  }
}

abstract class CopyWith$Input$CreateCommentDto<TRes> {
  factory CopyWith$Input$CreateCommentDto(
    Input$CreateCommentDto instance,
    TRes Function(Input$CreateCommentDto) then,
  ) = _CopyWithImpl$Input$CreateCommentDto;

  factory CopyWith$Input$CreateCommentDto.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCommentDto;

  TRes call({
    String? user_id,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
  });
}

class _CopyWithImpl$Input$CreateCommentDto<TRes>
    implements CopyWith$Input$CreateCommentDto<TRes> {
  _CopyWithImpl$Input$CreateCommentDto(
    this._instance,
    this._then,
  );

  final Input$CreateCommentDto _instance;

  final TRes Function(Input$CreateCommentDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? post_id = _undefined,
    Object? content = _undefined,
    Object? image = _undefined,
    Object? date_time_comment = _undefined,
  }) =>
      _then(Input$CreateCommentDto._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (post_id != _undefined && post_id != null)
          'post_id': (post_id as String),
        if (content != _undefined && content != null)
          'content': (content as String),
        if (image != _undefined && image != null) 'image': (image as String),
        if (date_time_comment != _undefined && date_time_comment != null)
          'date_time_comment': (date_time_comment as String),
      }));
}

class _CopyWithStubImpl$Input$CreateCommentDto<TRes>
    implements CopyWith$Input$CreateCommentDto<TRes> {
  _CopyWithStubImpl$Input$CreateCommentDto(this._res);

  TRes _res;

  call({
    String? user_id,
    String? post_id,
    String? content,
    String? image,
    String? date_time_comment,
  }) =>
      _res;
}

class Input$UpdateCommentDto {
  factory Input$UpdateCommentDto({
    required String content,
    List<String>? image,
  }) =>
      Input$UpdateCommentDto._({
        r'content': content,
        if (image != null) r'image': image,
      });

  Input$UpdateCommentDto._(this._$data);

  factory Input$UpdateCommentDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] =
          (l$image as List<dynamic>).map((e) => (e as String)).toList();
    }
    return Input$UpdateCommentDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get content => (_$data['content'] as String);

  List<String>? get image => (_$data['image'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$content = content;
    result$data['content'] = l$content;
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = (l$image as List<String>).map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateCommentDto<Input$UpdateCommentDto> get copyWith =>
      CopyWith$Input$UpdateCommentDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateCommentDto) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != null && lOther$image != null) {
      if (l$image.length != lOther$image.length) {
        return false;
      }
      for (int i = 0; i < l$image.length; i++) {
        final l$image$entry = l$image[i];
        final lOther$image$entry = lOther$image[i];
        if (l$image$entry != lOther$image$entry) {
          return false;
        }
      }
    } else if (l$image != lOther$image) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$image = image;
    return Object.hashAll([
      l$content,
      _$data.containsKey('image')
          ? l$image == null
              ? null
              : Object.hashAll(l$image.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateCommentDto<TRes> {
  factory CopyWith$Input$UpdateCommentDto(
    Input$UpdateCommentDto instance,
    TRes Function(Input$UpdateCommentDto) then,
  ) = _CopyWithImpl$Input$UpdateCommentDto;

  factory CopyWith$Input$UpdateCommentDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCommentDto;

  TRes call({
    String? content,
    List<String>? image,
  });
}

class _CopyWithImpl$Input$UpdateCommentDto<TRes>
    implements CopyWith$Input$UpdateCommentDto<TRes> {
  _CopyWithImpl$Input$UpdateCommentDto(
    this._instance,
    this._then,
  );

  final Input$UpdateCommentDto _instance;

  final TRes Function(Input$UpdateCommentDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? image = _undefined,
  }) =>
      _then(Input$UpdateCommentDto._({
        ..._instance._$data,
        if (content != _undefined && content != null)
          'content': (content as String),
        if (image != _undefined && image != null)
          'image': (image as List<String>),
      }));
}

class _CopyWithStubImpl$Input$UpdateCommentDto<TRes>
    implements CopyWith$Input$UpdateCommentDto<TRes> {
  _CopyWithStubImpl$Input$UpdateCommentDto(this._res);

  TRes _res;

  call({
    String? content,
    List<String>? image,
  }) =>
      _res;
}

class Input$CreateUserDto {
  factory Input$CreateUserDto({
    required String name,
    required double gender,
    required double age,
    String? living,
    required Input$CreateAccountDto account,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
  }) =>
      Input$CreateUserDto._({
        r'name': name,
        r'gender': gender,
        r'age': age,
        if (living != null) r'living': living,
        r'account': account,
        if (bio != null) r'bio': bio,
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (avatar != null) r'avatar': avatar,
        if (date_created != null) r'date_created': date_created,
        if (date_closed != null) r'date_closed': date_closed,
      });

  Input$CreateUserDto._(this._$data);

  factory Input$CreateUserDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$gender = data['gender'];
    result$data['gender'] = (l$gender as num).toDouble();
    final l$age = data['age'];
    result$data['age'] = (l$age as num).toDouble();
    if (data.containsKey('living')) {
      final l$living = data['living'];
      result$data['living'] = (l$living as String);
    }
    final l$account = data['account'];
    result$data['account'] =
        Input$CreateAccountDto.fromJson((l$account as Map<String, dynamic>));
    if (data.containsKey('bio')) {
      final l$bio = data['bio'];
      result$data['bio'] = (l$bio as String);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String);
    }
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String);
    }
    if (data.containsKey('date_created')) {
      final l$date_created = data['date_created'];
      result$data['date_created'] = (l$date_created as String);
    }
    if (data.containsKey('date_closed')) {
      final l$date_closed = data['date_closed'];
      result$data['date_closed'] = (l$date_closed as String);
    }
    return Input$CreateUserDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  double get gender => (_$data['gender'] as double);

  double get age => (_$data['age'] as double);

  String? get living => (_$data['living'] as String?);

  Input$CreateAccountDto get account =>
      (_$data['account'] as Input$CreateAccountDto);

  String? get bio => (_$data['bio'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get avatar => (_$data['avatar'] as String?);

  String? get date_created => (_$data['date_created'] as String?);

  String? get date_closed => (_$data['date_closed'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$gender = gender;
    result$data['gender'] = l$gender;
    final l$age = age;
    result$data['age'] = l$age;
    if (_$data.containsKey('living')) {
      final l$living = living;
      result$data['living'] = (l$living as String);
    }
    final l$account = account;
    result$data['account'] = l$account.toJson();
    if (_$data.containsKey('bio')) {
      final l$bio = bio;
      result$data['bio'] = (l$bio as String);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = (l$email as String);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = (l$phone as String);
    }
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = (l$avatar as String);
    }
    if (_$data.containsKey('date_created')) {
      final l$date_created = date_created;
      result$data['date_created'] = (l$date_created as String);
    }
    if (_$data.containsKey('date_closed')) {
      final l$date_closed = date_closed;
      result$data['date_closed'] = (l$date_closed as String);
    }
    return result$data;
  }

  CopyWith$Input$CreateUserDto<Input$CreateUserDto> get copyWith =>
      CopyWith$Input$CreateUserDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateUserDto) || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('living') != other._$data.containsKey('living')) {
      return false;
    }
    if (l$living != lOther$living) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (_$data.containsKey('bio') != other._$data.containsKey('bio')) {
      return false;
    }
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$date_created = date_created;
    final lOther$date_created = other.date_created;
    if (_$data.containsKey('date_created') !=
        other._$data.containsKey('date_created')) {
      return false;
    }
    if (l$date_created != lOther$date_created) {
      return false;
    }
    final l$date_closed = date_closed;
    final lOther$date_closed = other.date_closed;
    if (_$data.containsKey('date_closed') !=
        other._$data.containsKey('date_closed')) {
      return false;
    }
    if (l$date_closed != lOther$date_closed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$gender = gender;
    final l$age = age;
    final l$living = living;
    final l$account = account;
    final l$bio = bio;
    final l$email = email;
    final l$phone = phone;
    final l$avatar = avatar;
    final l$date_created = date_created;
    final l$date_closed = date_closed;
    return Object.hashAll([
      l$name,
      l$gender,
      l$age,
      _$data.containsKey('living') ? l$living : const {},
      l$account,
      _$data.containsKey('bio') ? l$bio : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('date_created') ? l$date_created : const {},
      _$data.containsKey('date_closed') ? l$date_closed : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateUserDto<TRes> {
  factory CopyWith$Input$CreateUserDto(
    Input$CreateUserDto instance,
    TRes Function(Input$CreateUserDto) then,
  ) = _CopyWithImpl$Input$CreateUserDto;

  factory CopyWith$Input$CreateUserDto.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserDto;

  TRes call({
    String? name,
    double? gender,
    double? age,
    String? living,
    Input$CreateAccountDto? account,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
  });
  CopyWith$Input$CreateAccountDto<TRes> get account;
}

class _CopyWithImpl$Input$CreateUserDto<TRes>
    implements CopyWith$Input$CreateUserDto<TRes> {
  _CopyWithImpl$Input$CreateUserDto(
    this._instance,
    this._then,
  );

  final Input$CreateUserDto _instance;

  final TRes Function(Input$CreateUserDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? living = _undefined,
    Object? account = _undefined,
    Object? bio = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? avatar = _undefined,
    Object? date_created = _undefined,
    Object? date_closed = _undefined,
  }) =>
      _then(Input$CreateUserDto._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (gender != _undefined && gender != null)
          'gender': (gender as double),
        if (age != _undefined && age != null) 'age': (age as double),
        if (living != _undefined && living != null)
          'living': (living as String),
        if (account != _undefined && account != null)
          'account': (account as Input$CreateAccountDto),
        if (bio != _undefined && bio != null) 'bio': (bio as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (phone != _undefined && phone != null) 'phone': (phone as String),
        if (avatar != _undefined && avatar != null)
          'avatar': (avatar as String),
        if (date_created != _undefined && date_created != null)
          'date_created': (date_created as String),
        if (date_closed != _undefined && date_closed != null)
          'date_closed': (date_closed as String),
      }));

  CopyWith$Input$CreateAccountDto<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Input$CreateAccountDto(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Input$CreateUserDto<TRes>
    implements CopyWith$Input$CreateUserDto<TRes> {
  _CopyWithStubImpl$Input$CreateUserDto(this._res);

  TRes _res;

  call({
    String? name,
    double? gender,
    double? age,
    String? living,
    Input$CreateAccountDto? account,
    String? bio,
    String? email,
    String? phone,
    String? avatar,
    String? date_created,
    String? date_closed,
  }) =>
      _res;

  CopyWith$Input$CreateAccountDto<TRes> get account =>
      CopyWith$Input$CreateAccountDto.stub(_res);
}

class Input$CreateAccountDto {
  factory Input$CreateAccountDto({
    required String username,
    required String password,
  }) =>
      Input$CreateAccountDto._({
        r'username': username,
        r'password': password,
      });

  Input$CreateAccountDto._(this._$data);

  factory Input$CreateAccountDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$CreateAccountDto._(result$data);
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

  CopyWith$Input$CreateAccountDto<Input$CreateAccountDto> get copyWith =>
      CopyWith$Input$CreateAccountDto(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateAccountDto) ||
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

abstract class CopyWith$Input$CreateAccountDto<TRes> {
  factory CopyWith$Input$CreateAccountDto(
    Input$CreateAccountDto instance,
    TRes Function(Input$CreateAccountDto) then,
  ) = _CopyWithImpl$Input$CreateAccountDto;

  factory CopyWith$Input$CreateAccountDto.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAccountDto;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Input$CreateAccountDto<TRes>
    implements CopyWith$Input$CreateAccountDto<TRes> {
  _CopyWithImpl$Input$CreateAccountDto(
    this._instance,
    this._then,
  );

  final Input$CreateAccountDto _instance;

  final TRes Function(Input$CreateAccountDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$CreateAccountDto._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$CreateAccountDto<TRes>
    implements CopyWith$Input$CreateAccountDto<TRes> {
  _CopyWithStubImpl$Input$CreateAccountDto(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
