// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Emoji _$EmojiFromJson(Map<String, dynamic> json) {
  return _Emoji.fromJson(json);
}

/// @nodoc
mixin _$Emoji {
  String get k => throw _privateConstructorUsedError;
  List<String> get v => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiCopyWith<Emoji> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) then) =
      _$EmojiCopyWithImpl<$Res, Emoji>;
  @useResult
  $Res call({String k, List<String> v, int qty});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res, $Val extends Emoji>
    implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? k = null,
    Object? v = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as List<String>,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmojiImplCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$$EmojiImplCopyWith(
          _$EmojiImpl value, $Res Function(_$EmojiImpl) then) =
      __$$EmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String k, List<String> v, int qty});
}

/// @nodoc
class __$$EmojiImplCopyWithImpl<$Res>
    extends _$EmojiCopyWithImpl<$Res, _$EmojiImpl>
    implements _$$EmojiImplCopyWith<$Res> {
  __$$EmojiImplCopyWithImpl(
      _$EmojiImpl _value, $Res Function(_$EmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? k = null,
    Object? v = null,
    Object? qty = null,
  }) {
    return _then(_$EmojiImpl(
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value._v
          : v // ignore: cast_nullable_to_non_nullable
              as List<String>,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiImpl implements _Emoji {
  _$EmojiImpl(
      {required this.k, required final List<String> v, required this.qty})
      : _v = v;

  factory _$EmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiImplFromJson(json);

  @override
  final String k;
  final List<String> _v;
  @override
  List<String> get v {
    if (_v is EqualUnmodifiableListView) return _v;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_v);
  }

  @override
  final int qty;

  @override
  String toString() {
    return 'Emoji(k: $k, v: $v, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiImpl &&
            (identical(other.k, k) || other.k == k) &&
            const DeepCollectionEquality().equals(other._v, _v) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, k, const DeepCollectionEquality().hash(_v), qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiImplCopyWith<_$EmojiImpl> get copyWith =>
      __$$EmojiImplCopyWithImpl<_$EmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiImplToJson(
      this,
    );
  }
}

abstract class _Emoji implements Emoji {
  factory _Emoji(
      {required final String k,
      required final List<String> v,
      required final int qty}) = _$EmojiImpl;

  factory _Emoji.fromJson(Map<String, dynamic> json) = _$EmojiImpl.fromJson;

  @override
  String get k;
  @override
  List<String> get v;
  @override
  int get qty;
  @override
  @JsonKey(ignore: true)
  _$$EmojiImplCopyWith<_$EmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
