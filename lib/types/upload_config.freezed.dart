// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadConfig _$UploadConfigFromJson(Map<String, dynamic> json) {
  return _UploadConfig.fromJson(json);
}

/// @nodoc
class _$UploadConfigTearOff {
  const _$UploadConfigTearOff();

  _UploadConfig call({required String filePath, required String authKey}) {
    return _UploadConfig(
      filePath: filePath,
      authKey: authKey,
    );
  }

  UploadConfig fromJson(Map<String, Object?> json) {
    return UploadConfig.fromJson(json);
  }
}

/// @nodoc
const $UploadConfig = _$UploadConfigTearOff();

/// @nodoc
mixin _$UploadConfig {
  String get filePath => throw _privateConstructorUsedError;
  String get authKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadConfigCopyWith<UploadConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadConfigCopyWith<$Res> {
  factory $UploadConfigCopyWith(
          UploadConfig value, $Res Function(UploadConfig) then) =
      _$UploadConfigCopyWithImpl<$Res>;
  $Res call({String filePath, String authKey});
}

/// @nodoc
class _$UploadConfigCopyWithImpl<$Res> implements $UploadConfigCopyWith<$Res> {
  _$UploadConfigCopyWithImpl(this._value, this._then);

  final UploadConfig _value;
  // ignore: unused_field
  final $Res Function(UploadConfig) _then;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? authKey = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      authKey: authKey == freezed
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UploadConfigCopyWith<$Res>
    implements $UploadConfigCopyWith<$Res> {
  factory _$UploadConfigCopyWith(
          _UploadConfig value, $Res Function(_UploadConfig) then) =
      __$UploadConfigCopyWithImpl<$Res>;
  @override
  $Res call({String filePath, String authKey});
}

/// @nodoc
class __$UploadConfigCopyWithImpl<$Res> extends _$UploadConfigCopyWithImpl<$Res>
    implements _$UploadConfigCopyWith<$Res> {
  __$UploadConfigCopyWithImpl(
      _UploadConfig _value, $Res Function(_UploadConfig) _then)
      : super(_value, (v) => _then(v as _UploadConfig));

  @override
  _UploadConfig get _value => super._value as _UploadConfig;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? authKey = freezed,
  }) {
    return _then(_UploadConfig(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      authKey: authKey == freezed
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UploadConfig extends _UploadConfig {
  _$_UploadConfig({required this.filePath, required this.authKey}) : super._();

  factory _$_UploadConfig.fromJson(Map<String, dynamic> json) =>
      _$$_UploadConfigFromJson(json);

  @override
  final String filePath;
  @override
  final String authKey;

  @override
  String toString() {
    return 'UploadConfig(filePath: $filePath, authKey: $authKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadConfig &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.authKey, authKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(authKey));

  @JsonKey(ignore: true)
  @override
  _$UploadConfigCopyWith<_UploadConfig> get copyWith =>
      __$UploadConfigCopyWithImpl<_UploadConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadConfigToJson(this);
  }
}

abstract class _UploadConfig extends UploadConfig {
  factory _UploadConfig({required String filePath, required String authKey}) =
      _$_UploadConfig;
  _UploadConfig._() : super._();

  factory _UploadConfig.fromJson(Map<String, dynamic> json) =
      _$_UploadConfig.fromJson;

  @override
  String get filePath;
  @override
  String get authKey;
  @override
  @JsonKey(ignore: true)
  _$UploadConfigCopyWith<_UploadConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
