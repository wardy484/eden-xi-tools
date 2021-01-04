// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

// ignore: unused_element
  _Settings call({int maxPlayersOnDashboard, int maxItemsOnDashboard}) {
    return _Settings(
      maxPlayersOnDashboard: maxPlayersOnDashboard,
      maxItemsOnDashboard: maxItemsOnDashboard,
    );
  }

// ignore: unused_element
  Settings fromJson(Map<String, Object> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  int get maxPlayersOnDashboard;
  int get maxItemsOnDashboard;

  Map<String, dynamic> toJson();
  $SettingsCopyWith<Settings> get copyWith;
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
    Object maxPlayersOnDashboard = freezed,
    Object maxItemsOnDashboard = freezed,
  }) {
    return _then(_value.copyWith(
      maxPlayersOnDashboard: maxPlayersOnDashboard == freezed
          ? _value.maxPlayersOnDashboard
          : maxPlayersOnDashboard as int,
      maxItemsOnDashboard: maxItemsOnDashboard == freezed
          ? _value.maxItemsOnDashboard
          : maxItemsOnDashboard as int,
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
    Object maxPlayersOnDashboard = freezed,
    Object maxItemsOnDashboard = freezed,
  }) {
    return _then(_Settings(
      maxPlayersOnDashboard: maxPlayersOnDashboard == freezed
          ? _value.maxPlayersOnDashboard
          : maxPlayersOnDashboard as int,
      maxItemsOnDashboard: maxItemsOnDashboard == freezed
          ? _value.maxItemsOnDashboard
          : maxItemsOnDashboard as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Settings implements _Settings {
  _$_Settings({this.maxPlayersOnDashboard, this.maxItemsOnDashboard});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsFromJson(json);

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
        (other is _Settings &&
            (identical(other.maxPlayersOnDashboard, maxPlayersOnDashboard) ||
                const DeepCollectionEquality().equals(
                    other.maxPlayersOnDashboard, maxPlayersOnDashboard)) &&
            (identical(other.maxItemsOnDashboard, maxItemsOnDashboard) ||
                const DeepCollectionEquality()
                    .equals(other.maxItemsOnDashboard, maxItemsOnDashboard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(maxPlayersOnDashboard) ^
      const DeepCollectionEquality().hash(maxItemsOnDashboard);

  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  factory _Settings({int maxPlayersOnDashboard, int maxItemsOnDashboard}) =
      _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  int get maxPlayersOnDashboard;
  @override
  int get maxItemsOnDashboard;
  @override
  _$SettingsCopyWith<_Settings> get copyWith;
}
