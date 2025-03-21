// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  int get maxPlayersOnDashboard => throw _privateConstructorUsedError;
  int get maxItemsOnDashboard => throw _privateConstructorUsedError;
  bool get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call(
      {int maxPlayersOnDashboard, int maxItemsOnDashboard, bool darkMode});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object? maxPlayersOnDashboard = freezed,
    Object? maxItemsOnDashboard = freezed,
    Object? darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      maxPlayersOnDashboard: maxPlayersOnDashboard == freezed
          ? _value.maxPlayersOnDashboard
          : maxPlayersOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
      maxItemsOnDashboard: maxItemsOnDashboard == freezed
          ? _value.maxItemsOnDashboard
          : maxItemsOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int maxPlayersOnDashboard, int maxItemsOnDashboard, bool darkMode});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, (v) => _then(v as _$_Settings));

  @override
  _$_Settings get _value => super._value as _$_Settings;

  @override
  $Res call({
    Object? maxPlayersOnDashboard = freezed,
    Object? maxItemsOnDashboard = freezed,
    Object? darkMode = freezed,
  }) {
    return _then(_$_Settings(
      maxPlayersOnDashboard: maxPlayersOnDashboard == freezed
          ? _value.maxPlayersOnDashboard
          : maxPlayersOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
      maxItemsOnDashboard: maxItemsOnDashboard == freezed
          ? _value.maxItemsOnDashboard
          : maxItemsOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings implements _Settings {
  _$_Settings(
      {required this.maxPlayersOnDashboard,
      required this.maxItemsOnDashboard,
      this.darkMode = false});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  final int maxPlayersOnDashboard;
  @override
  final int maxItemsOnDashboard;
  @override
  @JsonKey()
  final bool darkMode;

  @override
  String toString() {
    return 'Settings(maxPlayersOnDashboard: $maxPlayersOnDashboard, maxItemsOnDashboard: $maxItemsOnDashboard, darkMode: $darkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            const DeepCollectionEquality()
                .equals(other.maxPlayersOnDashboard, maxPlayersOnDashboard) &&
            const DeepCollectionEquality()
                .equals(other.maxItemsOnDashboard, maxItemsOnDashboard) &&
            const DeepCollectionEquality().equals(other.darkMode, darkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxPlayersOnDashboard),
      const DeepCollectionEquality().hash(maxItemsOnDashboard),
      const DeepCollectionEquality().hash(darkMode));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  factory _Settings(
      {required final int maxPlayersOnDashboard,
      required final int maxItemsOnDashboard,
      final bool darkMode}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  int get maxPlayersOnDashboard => throw _privateConstructorUsedError;
  @override
  int get maxItemsOnDashboard => throw _privateConstructorUsedError;
  @override
  bool get darkMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
