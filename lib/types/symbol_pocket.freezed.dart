// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symbol_pocket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymbolPocket _$SymbolPocketFromJson(Map<String, dynamic> json) {
  return _SymbolPocket.fromJson(json);
}

/// @nodoc
class _$SymbolPocketTearOff {
  const _$SymbolPocketTearOff();

  _SymbolPocket call({required String? symbolId, required int count}) {
    return _SymbolPocket(
      symbolId: symbolId,
      count: count,
    );
  }

  SymbolPocket fromJson(Map<String, Object?> json) {
    return SymbolPocket.fromJson(json);
  }
}

/// @nodoc
const $SymbolPocket = _$SymbolPocketTearOff();

/// @nodoc
mixin _$SymbolPocket {
  String? get symbolId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymbolPocketCopyWith<SymbolPocket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolPocketCopyWith<$Res> {
  factory $SymbolPocketCopyWith(
          SymbolPocket value, $Res Function(SymbolPocket) then) =
      _$SymbolPocketCopyWithImpl<$Res>;
  $Res call({String? symbolId, int count});
}

/// @nodoc
class _$SymbolPocketCopyWithImpl<$Res> implements $SymbolPocketCopyWith<$Res> {
  _$SymbolPocketCopyWithImpl(this._value, this._then);

  final SymbolPocket _value;
  // ignore: unused_field
  final $Res Function(SymbolPocket) _then;

  @override
  $Res call({
    Object? symbolId = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      symbolId: symbolId == freezed
          ? _value.symbolId
          : symbolId // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SymbolPocketCopyWith<$Res>
    implements $SymbolPocketCopyWith<$Res> {
  factory _$SymbolPocketCopyWith(
          _SymbolPocket value, $Res Function(_SymbolPocket) then) =
      __$SymbolPocketCopyWithImpl<$Res>;
  @override
  $Res call({String? symbolId, int count});
}

/// @nodoc
class __$SymbolPocketCopyWithImpl<$Res> extends _$SymbolPocketCopyWithImpl<$Res>
    implements _$SymbolPocketCopyWith<$Res> {
  __$SymbolPocketCopyWithImpl(
      _SymbolPocket _value, $Res Function(_SymbolPocket) _then)
      : super(_value, (v) => _then(v as _SymbolPocket));

  @override
  _SymbolPocket get _value => super._value as _SymbolPocket;

  @override
  $Res call({
    Object? symbolId = freezed,
    Object? count = freezed,
  }) {
    return _then(_SymbolPocket(
      symbolId: symbolId == freezed
          ? _value.symbolId
          : symbolId // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SymbolPocket extends _SymbolPocket {
  _$_SymbolPocket({required this.symbolId, required this.count}) : super._();

  factory _$_SymbolPocket.fromJson(Map<String, dynamic> json) =>
      _$$_SymbolPocketFromJson(json);

  @override
  final String? symbolId;
  @override
  final int count;

  @override
  String toString() {
    return 'SymbolPocket(symbolId: $symbolId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymbolPocket &&
            const DeepCollectionEquality().equals(other.symbolId, symbolId) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbolId),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$SymbolPocketCopyWith<_SymbolPocket> get copyWith =>
      __$SymbolPocketCopyWithImpl<_SymbolPocket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymbolPocketToJson(this);
  }
}

abstract class _SymbolPocket extends SymbolPocket {
  factory _SymbolPocket({required String? symbolId, required int count}) =
      _$_SymbolPocket;
  _SymbolPocket._() : super._();

  factory _SymbolPocket.fromJson(Map<String, dynamic> json) =
      _$_SymbolPocket.fromJson;

  @override
  String? get symbolId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$SymbolPocketCopyWith<_SymbolPocket> get copyWith =>
      throw _privateConstructorUsedError;
}
