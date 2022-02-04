// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

State _$StateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
class _$StateTearOff {
  const _$StateTearOff();

  _State call(
      {required String id,
      required List<int> deck,
      required int dealerStep,
      required List<Side> sides,
      required Wheel wheel}) {
    return _State(
      id: id,
      deck: deck,
      dealerStep: dealerStep,
      sides: sides,
      wheel: wheel,
    );
  }

  State fromJson(Map<String, Object?> json) {
    return State.fromJson(json);
  }
}

/// @nodoc
const $State = _$StateTearOff();

/// @nodoc
mixin _$State {
  String get id => throw _privateConstructorUsedError;
  List<int> get deck => throw _privateConstructorUsedError;
  int get dealerStep => throw _privateConstructorUsedError;
  List<Side> get sides => throw _privateConstructorUsedError;
  Wheel get wheel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<int> deck,
      int dealerStep,
      List<Side> sides,
      Wheel wheel});

  $WheelCopyWith<$Res> get wheel;
}

/// @nodoc
class _$StateCopyWithImpl<$Res> implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  final State _value;
  // ignore: unused_field
  final $Res Function(State) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? deck = freezed,
    Object? dealerStep = freezed,
    Object? sides = freezed,
    Object? wheel = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deck: deck == freezed
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dealerStep: dealerStep == freezed
          ? _value.dealerStep
          : dealerStep // ignore: cast_nullable_to_non_nullable
              as int,
      sides: sides == freezed
          ? _value.sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Side>,
      wheel: wheel == freezed
          ? _value.wheel
          : wheel // ignore: cast_nullable_to_non_nullable
              as Wheel,
    ));
  }

  @override
  $WheelCopyWith<$Res> get wheel {
    return $WheelCopyWith<$Res>(_value.wheel, (value) {
      return _then(_value.copyWith(wheel: value));
    });
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<int> deck,
      int dealerStep,
      List<Side> sides,
      Wheel wheel});

  @override
  $WheelCopyWith<$Res> get wheel;
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? id = freezed,
    Object? deck = freezed,
    Object? dealerStep = freezed,
    Object? sides = freezed,
    Object? wheel = freezed,
  }) {
    return _then(_State(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deck: deck == freezed
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dealerStep: dealerStep == freezed
          ? _value.dealerStep
          : dealerStep // ignore: cast_nullable_to_non_nullable
              as int,
      sides: sides == freezed
          ? _value.sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Side>,
      wheel: wheel == freezed
          ? _value.wheel
          : wheel // ignore: cast_nullable_to_non_nullable
              as Wheel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_State extends _State {
  _$_State(
      {required this.id,
      required this.deck,
      required this.dealerStep,
      required this.sides,
      required this.wheel})
      : super._();

  factory _$_State.fromJson(Map<String, dynamic> json) =>
      _$$_StateFromJson(json);

  @override
  final String id;
  @override
  final List<int> deck;
  @override
  final int dealerStep;
  @override
  final List<Side> sides;
  @override
  final Wheel wheel;

  @override
  String toString() {
    return 'State(id: $id, deck: $deck, dealerStep: $dealerStep, sides: $sides, wheel: $wheel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.deck, deck) &&
            const DeepCollectionEquality()
                .equals(other.dealerStep, dealerStep) &&
            const DeepCollectionEquality().equals(other.sides, sides) &&
            const DeepCollectionEquality().equals(other.wheel, wheel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(deck),
      const DeepCollectionEquality().hash(dealerStep),
      const DeepCollectionEquality().hash(sides),
      const DeepCollectionEquality().hash(wheel));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateToJson(this);
  }
}

abstract class _State extends State {
  factory _State(
      {required String id,
      required List<int> deck,
      required int dealerStep,
      required List<Side> sides,
      required Wheel wheel}) = _$_State;
  _State._() : super._();

  factory _State.fromJson(Map<String, dynamic> json) = _$_State.fromJson;

  @override
  String get id;
  @override
  List<int> get deck;
  @override
  int get dealerStep;
  @override
  List<Side> get sides;
  @override
  Wheel get wheel;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
