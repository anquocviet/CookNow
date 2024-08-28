// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistorySearch _$HistorySearchFromJson(Map<String, dynamic> json) {
  return _HistorySearch.fromJson(json);
}

/// @nodoc
mixin _$HistorySearch {
  String get id => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  String get dateTime => throw _privateConstructorUsedError;

  /// Serializes this HistorySearch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistorySearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistorySearchCopyWith<HistorySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistorySearchCopyWith<$Res> {
  factory $HistorySearchCopyWith(
          HistorySearch value, $Res Function(HistorySearch) then) =
      _$HistorySearchCopyWithImpl<$Res, HistorySearch>;
  @useResult
  $Res call(
      {String id, String data, @JsonKey(name: 'date_time') String dateTime});
}

/// @nodoc
class _$HistorySearchCopyWithImpl<$Res, $Val extends HistorySearch>
    implements $HistorySearchCopyWith<$Res> {
  _$HistorySearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistorySearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistorySearchImplCopyWith<$Res>
    implements $HistorySearchCopyWith<$Res> {
  factory _$$HistorySearchImplCopyWith(
          _$HistorySearchImpl value, $Res Function(_$HistorySearchImpl) then) =
      __$$HistorySearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String data, @JsonKey(name: 'date_time') String dateTime});
}

/// @nodoc
class __$$HistorySearchImplCopyWithImpl<$Res>
    extends _$HistorySearchCopyWithImpl<$Res, _$HistorySearchImpl>
    implements _$$HistorySearchImplCopyWith<$Res> {
  __$$HistorySearchImplCopyWithImpl(
      _$HistorySearchImpl _value, $Res Function(_$HistorySearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistorySearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? dateTime = null,
  }) {
    return _then(_$HistorySearchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistorySearchImpl implements _HistorySearch {
  _$HistorySearchImpl(
      {required this.id,
      required this.data,
      @JsonKey(name: 'date_time') required this.dateTime});

  factory _$HistorySearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistorySearchImplFromJson(json);

  @override
  final String id;
  @override
  final String data;
  @override
  @JsonKey(name: 'date_time')
  final String dateTime;

  @override
  String toString() {
    return 'HistorySearch(id: $id, data: $data, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistorySearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, data, dateTime);

  /// Create a copy of HistorySearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistorySearchImplCopyWith<_$HistorySearchImpl> get copyWith =>
      __$$HistorySearchImplCopyWithImpl<_$HistorySearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistorySearchImplToJson(
      this,
    );
  }
}

abstract class _HistorySearch implements HistorySearch {
  factory _HistorySearch(
          {required final String id,
          required final String data,
          @JsonKey(name: 'date_time') required final String dateTime}) =
      _$HistorySearchImpl;

  factory _HistorySearch.fromJson(Map<String, dynamic> json) =
      _$HistorySearchImpl.fromJson;

  @override
  String get id;
  @override
  String get data;
  @override
  @JsonKey(name: 'date_time')
  String get dateTime;

  /// Create a copy of HistorySearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistorySearchImplCopyWith<_$HistorySearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
