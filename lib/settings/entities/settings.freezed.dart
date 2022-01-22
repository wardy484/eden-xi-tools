// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

  _Settings call(
      {required int maxPlayersOnDashboard, required int maxItemsOnDashboard}) {
    return _Settings(
      maxPlayersOnDashboard: maxPlayersOnDashboard,
      maxItemsOnDashboard: maxItemsOnDashboard,
    );
  }

  Settings fromJson(Map<String, Object?> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  int get maxPlayersOnDashboard => throw _privateConstructorUsedError;
  int get maxItemsOnDashboard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({int maxPlayersOnDashboard, int maxItemsOnDashboard});
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
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({int maxPlayersOnDashboard, int maxItemsOnDashboard});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object? maxPlayersOnDashboard = freezed,
    Object? maxItemsOnDashboard = freezed,
  }) {
    return _then(_Settings(
      maxPlayersOnDashboard: maxPlayersOnDashboard == freezed
          ? _value.maxPlayersOnDashboard
          : maxPlayersOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
      maxItemsOnDashboard: maxItemsOnDashboard == freezed
          ? _value.maxItemsOnDashboard
          : maxItemsOnDashboard // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings implements _Settings {
  _$_Settings(
      {required this.maxPlayersOnDashboard, required this.maxItemsOnDashboard});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  final int maxPlayersOnDashboard;
  @override
  final int maxItemsOnDashboard;

  @override
  String toString() {
    return 'Settings(maxPlayersOnDashboard: $maxPlayersOnDashboard, maxItemsOnDashboard: $maxItemsOnDashboard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Settings &&
            (identical(other.maxPlayersOnDashboard, maxPlayersOnDashboard) ||
                other.maxPlayersOnDashboard == maxPlayersOnDashboard) &&
            (identical(other.maxItemsOnDashboard, maxItemsOnDashboard) ||
                other.maxItemsOnDashboard == maxItemsOnDashboard));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, maxPlayersOnDashboard, maxItemsOnDashboard);

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  factory _Settings(
      {required int maxPlayersOnDashboard,
      required int maxItemsOnDashboard}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  int get maxPlayersOnDashboard;
  @override
  int get maxItemsOnDashboard;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
