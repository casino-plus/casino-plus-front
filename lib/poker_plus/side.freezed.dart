// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Side _$SideFromJson(Map<String, dynamic> json) {
  return _Side.fromJson(json);
}

/// @nodoc
class _$SideTearOff {
  const _$SideTearOff();

  _Side call(
      {required int seat,
      required int playerStep,
      required int chips,
      required List<int> handCardIds,
      required int? betLevel,
      required int? putCardId,
      required int lastCombo}) {
    return _Side(
      seat: seat,
      playerStep: playerStep,
      chips: chips,
      handCardIds: handCardIds,
      betLevel: betLevel,
      putCardId: putCardId,
      lastCombo: lastCombo,
    );
  }

  Side fromJson(Map<String, Object?> json) {
    return Side.fromJson(json);
  }
}

/// @nodoc
const $Side = _$SideTearOff();

/// @nodoc
mixin _$Side {
  int get seat => throw _privateConstructorUsedError;
  int get playerStep => throw _privateConstructorUsedError;
  int get chips => throw _privateConstructorUsedError;
  List<int> get handCardIds => throw _privateConstructorUsedError;
  int? get betLevel => throw _privateConstructorUsedError;
  int? get putCardId => throw _privateConstructorUsedError;
  int get lastCombo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideCopyWith<Side> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideCopyWith<$Res> {
  factory $SideCopyWith(Side value, $Res Function(Side) then) =
      _$SideCopyWithImpl<$Res>;
  $Res call(
      {int seat,
      int playerStep,
      int chips,
      List<int> handCardIds,
      int? betLevel,
      int? putCardId,
      int lastCombo});
}

/// @nodoc
class _$SideCopyWithImpl<$Res> implements $SideCopyWith<$Res> {
  _$SideCopyWithImpl(this._value, this._then);

  final Side _value;
  // ignore: unused_field
  final $Res Function(Side) _then;

  @override
  $Res call({
    Object? seat = freezed,
    Object? playerStep = freezed,
    Object? chips = freezed,
    Object? handCardIds = freezed,
    Object? betLevel = freezed,
    Object? putCardId = freezed,
    Object? lastCombo = freezed,
  }) {
    return _then(_value.copyWith(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      playerStep: playerStep == freezed
          ? _value.playerStep
          : playerStep // ignore: cast_nullable_to_non_nullable
              as int,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      handCardIds: handCardIds == freezed
          ? _value.handCardIds
          : handCardIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      betLevel: betLevel == freezed
          ? _value.betLevel
          : betLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastCombo: lastCombo == freezed
          ? _value.lastCombo
          : lastCombo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SideCopyWith<$Res> implements $SideCopyWith<$Res> {
  factory _$SideCopyWith(_Side value, $Res Function(_Side) then) =
      __$SideCopyWithImpl<$Res>;
  @override
  $Res call(
      {int seat,
      int playerStep,
      int chips,
      List<int> handCardIds,
      int? betLevel,
      int? putCardId,
      int lastCombo});
}

/// @nodoc
class __$SideCopyWithImpl<$Res> extends _$SideCopyWithImpl<$Res>
    implements _$SideCopyWith<$Res> {
  __$SideCopyWithImpl(_Side _value, $Res Function(_Side) _then)
      : super(_value, (v) => _then(v as _Side));

  @override
  _Side get _value => super._value as _Side;

  @override
  $Res call({
    Object? seat = freezed,
    Object? playerStep = freezed,
    Object? chips = freezed,
    Object? handCardIds = freezed,
    Object? betLevel = freezed,
    Object? putCardId = freezed,
    Object? lastCombo = freezed,
  }) {
    return _then(_Side(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      playerStep: playerStep == freezed
          ? _value.playerStep
          : playerStep // ignore: cast_nullable_to_non_nullable
              as int,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      handCardIds: handCardIds == freezed
          ? _value.handCardIds
          : handCardIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      betLevel: betLevel == freezed
          ? _value.betLevel
          : betLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastCombo: lastCombo == freezed
          ? _value.lastCombo
          : lastCombo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Side extends _Side {
  _$_Side(
      {required this.seat,
      required this.playerStep,
      required this.chips,
      required this.handCardIds,
      required this.betLevel,
      required this.putCardId,
      required this.lastCombo})
      : super._();

  factory _$_Side.fromJson(Map<String, dynamic> json) => _$$_SideFromJson(json);

  @override
  final int seat;
  @override
  final int playerStep;
  @override
  final int chips;
  @override
  final List<int> handCardIds;
  @override
  final int? betLevel;
  @override
  final int? putCardId;
  @override
  final int lastCombo;

  @override
  String toString() {
    return 'Side(seat: $seat, playerStep: $playerStep, chips: $chips, handCardIds: $handCardIds, betLevel: $betLevel, putCardId: $putCardId, lastCombo: $lastCombo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Side &&
            const DeepCollectionEquality().equals(other.seat, seat) &&
            const DeepCollectionEquality()
                .equals(other.playerStep, playerStep) &&
            const DeepCollectionEquality().equals(other.chips, chips) &&
            const DeepCollectionEquality()
                .equals(other.handCardIds, handCardIds) &&
            const DeepCollectionEquality().equals(other.betLevel, betLevel) &&
            const DeepCollectionEquality().equals(other.putCardId, putCardId) &&
            const DeepCollectionEquality().equals(other.lastCombo, lastCombo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seat),
      const DeepCollectionEquality().hash(playerStep),
      const DeepCollectionEquality().hash(chips),
      const DeepCollectionEquality().hash(handCardIds),
      const DeepCollectionEquality().hash(betLevel),
      const DeepCollectionEquality().hash(putCardId),
      const DeepCollectionEquality().hash(lastCombo));

  @JsonKey(ignore: true)
  @override
  _$SideCopyWith<_Side> get copyWith =>
      __$SideCopyWithImpl<_Side>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideToJson(this);
  }
}

abstract class _Side extends Side {
  factory _Side(
      {required int seat,
      required int playerStep,
      required int chips,
      required List<int> handCardIds,
      required int? betLevel,
      required int? putCardId,
      required int lastCombo}) = _$_Side;
  _Side._() : super._();

  factory _Side.fromJson(Map<String, dynamic> json) = _$_Side.fromJson;

  @override
  int get seat;
  @override
  int get playerStep;
  @override
  int get chips;
  @override
  List<int> get handCardIds;
  @override
  int? get betLevel;
  @override
  int? get putCardId;
  @override
  int get lastCombo;
  @override
  @JsonKey(ignore: true)
  _$SideCopyWith<_Side> get copyWith => throw _privateConstructorUsedError;
}
