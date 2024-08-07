// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'nop_eat')
  int get nopEat => throw _privateConstructorUsedError; // number of people eat
  @JsonKey(name: 'prepare_time')
  String get prepareTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time_post')
  String get dateTimePost => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<Step> get steps => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      @JsonKey(name: 'nop_eat') int nopEat,
      @JsonKey(name: 'prepare_time') String prepareTime,
      @JsonKey(name: 'date_time_post') String dateTimePost,
      String category,
      List<String> ingredients,
      List<Step> steps,
      Owner owner,
      List<Emoji> emojis});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? nopEat = null,
    Object? prepareTime = null,
    Object? dateTimePost = null,
    Object? category = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? owner = null,
    Object? emojis = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nopEat: null == nopEat
          ? _value.nopEat
          : nopEat // ignore: cast_nullable_to_non_nullable
              as int,
      prepareTime: null == prepareTime
          ? _value.prepareTime
          : prepareTime // ignore: cast_nullable_to_non_nullable
              as String,
      dateTimePost: null == dateTimePost
          ? _value.dateTimePost
          : dateTimePost // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      @JsonKey(name: 'nop_eat') int nopEat,
      @JsonKey(name: 'prepare_time') String prepareTime,
      @JsonKey(name: 'date_time_post') String dateTimePost,
      String category,
      List<String> ingredients,
      List<Step> steps,
      Owner owner,
      List<Emoji> emojis});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? nopEat = null,
    Object? prepareTime = null,
    Object? dateTimePost = null,
    Object? category = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? owner = null,
    Object? emojis = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nopEat: null == nopEat
          ? _value.nopEat
          : nopEat // ignore: cast_nullable_to_non_nullable
              as int,
      prepareTime: null == prepareTime
          ? _value.prepareTime
          : prepareTime // ignore: cast_nullable_to_non_nullable
              as String,
      dateTimePost: null == dateTimePost
          ? _value.dateTimePost
          : dateTimePost // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.id,
      required this.name,
      required this.image,
      @JsonKey(name: 'nop_eat') required this.nopEat,
      @JsonKey(name: 'prepare_time') required this.prepareTime,
      @JsonKey(name: 'date_time_post') required this.dateTimePost,
      required this.category,
      required final List<String> ingredients,
      required final List<Step> steps,
      required this.owner,
      required final List<Emoji> emojis})
      : _ingredients = ingredients,
        _steps = steps,
        _emojis = emojis;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'nop_eat')
  final int nopEat;
// number of people eat
  @override
  @JsonKey(name: 'prepare_time')
  final String prepareTime;
  @override
  @JsonKey(name: 'date_time_post')
  final String dateTimePost;
  @override
  final String category;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Step> _steps;
  @override
  List<Step> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final Owner owner;
  final List<Emoji> _emojis;
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  @override
  String toString() {
    return 'Post(id: $id, name: $name, image: $image, nopEat: $nopEat, prepareTime: $prepareTime, dateTimePost: $dateTimePost, category: $category, ingredients: $ingredients, steps: $steps, owner: $owner, emojis: $emojis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nopEat, nopEat) || other.nopEat == nopEat) &&
            (identical(other.prepareTime, prepareTime) ||
                other.prepareTime == prepareTime) &&
            (identical(other.dateTimePost, dateTimePost) ||
                other.dateTimePost == dateTimePost) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      nopEat,
      prepareTime,
      dateTimePost,
      category,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps),
      owner,
      const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final String id,
      required final String name,
      required final String image,
      @JsonKey(name: 'nop_eat') required final int nopEat,
      @JsonKey(name: 'prepare_time') required final String prepareTime,
      @JsonKey(name: 'date_time_post') required final String dateTimePost,
      required final String category,
      required final List<String> ingredients,
      required final List<Step> steps,
      required final Owner owner,
      required final List<Emoji> emojis}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'nop_eat')
  int get nopEat;
  @override // number of people eat
  @JsonKey(name: 'prepare_time')
  String get prepareTime;
  @override
  @JsonKey(name: 'date_time_post')
  String get dateTimePost;
  @override
  String get category;
  @override
  List<String> get ingredients;
  @override
  List<Step> get steps;
  @override
  Owner get owner;
  @override
  List<Emoji> get emojis;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
