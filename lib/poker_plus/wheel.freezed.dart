// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wheel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wheel _$WheelFromJson(Map<String, dynamic> json) {
  return _Wheel.fromJson(json);
}

/// @nodoc
class _$WheelTearOff {
  const _$WheelTearOff();

  _Wheel call(
      {required List<int> innerPartIds,
      required List<int> outerPartIds,
      required int innerOffset,
      required int outerOffset}) {
    return _Wheel(
      innerPartIds: innerPartIds,
      outerPartIds: outerPartIds,
      innerOffset: innerOffset,
      outerOffset: outerOffset,
    );
  }

  Wheel fromJson(Map<String, Object?> json) {
    return Wheel.fromJson(json);
  }
}

/// @nodoc
const $Wheel = _$WheelTearOff();

/// @nodoc
mixin _$Wheel {
  List<int> get innerPartIds => throw _privateConstructorUsedError;
  List<int> get outerPartIds => throw _privateConstructorUsedError;
  int get innerOffset => throw _privateConstructorUsedError;
  int get outerOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WheelCopyWith<Wheel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheelCopyWith<$Res> {
  factory $WheelCopyWith(Wheel value, $Res Function(Wheel) then) =
      _$WheelCopyWithImpl<$Res>;
  $Res call(
      {List<int> innerPartIds,
      List<int> outerPartIds,
      int innerOffset,
      int outerOffset});
}

/// @nodoc
class _$WheelCopyWithImpl<$Res> implements $WheelCopyWith<$Res> {
  _$WheelCopyWithImpl(this._value, this._then);

  final Wheel _value;
  // ignore: unused_field
  final $Res Function(Wheel) _then;

  @override
  $Res call({
    Object? innerPartIds = freezed,
    Object? outerPartIds = freezed,
    Object? innerOffset = freezed,
    Object? outerOffset = freezed,
  }) {
    return _then(_value.copyWith(
      innerPartIds: innerPartIds == freezed
          ? _value.innerPartIds
          : innerPartIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      outerPartIds: outerPartIds == freezed
          ? _value.outerPartIds
          : outerPartIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      innerOffset: innerOffset == freezed
          ? _value.innerOffset
          : innerOffset // ignore: cast_nullable_to_non_nullable
              as int,
      outerOffset: outerOffset == freezed
          ? _value.outerOffset
          : outerOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WheelCopyWith<$Res> implements $WheelCopyWith<$Res> {
  factory _$WheelCopyWith(_Wheel value, $Res Function(_Wheel) then) =
      __$WheelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int> innerPartIds,
      List<int> outerPartIds,
      int innerOffset,
      int outerOffset});
}

/// @nodoc
class __$WheelCopyWithImpl<$Res> extends _$WheelCopyWithImpl<$Res>
    implements _$WheelCopyWith<$Res> {
  __$WheelCopyWithImpl(_Wheel _value, $Res Function(_Wheel) _then)
      : super(_value, (v) => _then(v as _Wheel));

  @override
  _Wheel get _value => super._value as _Wheel;

  @override
  $Res call({
    Object? innerPartIds = freezed,
    Object? outerPartIds = freezed,
    Object? innerOffset = freezed,
    Object? outerOffset = freezed,
  }) {
    return _then(_Wheel(
      innerPartIds: innerPartIds == freezed
          ? _value.innerPartIds
          : innerPartIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      outerPartIds: outerPartIds == freezed
          ? _value.outerPartIds
          : outerPartIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      innerOffset: innerOffset == freezed
          ? _value.innerOffset
          : innerOffset // ignore: cast_nullable_to_non_nullable
              as int,
      outerOffset: outerOffset == freezed
          ? _value.outerOffset
          : outerOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Wheel extends _Wheel {
  _$_Wheel(
      {required this.innerPartIds,
      required this.outerPartIds,
      required this.innerOffset,
      required this.outerOffset})
      : super._();

  factory _$_Wheel.fromJson(Map<String, dynamic> json) =>
      _$$_WheelFromJson(json);

  @override
  final List<int> innerPartIds;
  @override
  final List<int> outerPartIds;
  @override
  final int innerOffset;
  @override
  final int outerOffset;

  @override
  String toString() {
    return 'Wheel(innerPartIds: $innerPartIds, outerPartIds: $outerPartIds, innerOffset: $innerOffset, outerOffset: $outerOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wheel &&
            const DeepCollectionEquality()
                .equals(other.innerPartIds, innerPartIds) &&
            const DeepCollectionEquality()
                .equals(other.outerPartIds, outerPartIds) &&
            const DeepCollectionEquality()
                .equals(other.innerOffset, innerOffset) &&
            const DeepCollectionEquality()
                .equals(other.outerOffset, outerOffset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(innerPartIds),
      const DeepCollectionEquality().hash(outerPartIds),
      const DeepCollectionEquality().hash(innerOffset),
      const DeepCollectionEquality().hash(outerOffset));

  @JsonKey(ignore: true)
  @override
  _$WheelCopyWith<_Wheel> get copyWith =>
      __$WheelCopyWithImpl<_Wheel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WheelToJson(this);
  }
}

abstract class _Wheel extends Wheel {
  factory _Wheel(
      {required List<int> innerPartIds,
      required List<int> outerPartIds,
      required int innerOffset,
      required int outerOffset}) = _$_Wheel;
  _Wheel._() : super._();

  factory _Wheel.fromJson(Map<String, dynamic> json) = _$_Wheel.fromJson;

  @override
  List<int> get innerPartIds;
  @override
  List<int> get outerPartIds;
  @override
  int get innerOffset;
  @override
  int get outerOffset;
  @override
  @JsonKey(ignore: true)
  _$WheelCopyWith<_Wheel> get copyWith => throw _privateConstructorUsedError;
}
