// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player_ranks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayerRanks _$PlayerRanksFromJson(Map<String, dynamic> json) {
  return _PlayerRanks.fromJson(json);
}

/// @nodoc
class _$PlayerRanksTearOff {
  const _$PlayerRanksTearOff();

// ignore: unused_element
  _PlayerRanks call({int bastok, int sandoria, int windurst}) {
    return _PlayerRanks(
      bastok: bastok,
      sandoria: sandoria,
      windurst: windurst,
    );
  }

// ignore: unused_element
  PlayerRanks fromJson(Map<String, Object> json) {
    return PlayerRanks.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerRanks = _$PlayerRanksTearOff();

/// @nodoc
mixin _$PlayerRanks {
  int get bastok;
  int get sandoria;
  int get windurst;

  Map<String, dynamic> toJson();
  $PlayerRanksCopyWith<PlayerRanks> get copyWith;
}

/// @nodoc
abstract class $PlayerRanksCopyWith<$Res> {
  factory $PlayerRanksCopyWith(
          PlayerRanks value, $Res Function(PlayerRanks) then) =
      _$PlayerRanksCopyWithImpl<$Res>;
  $Res call({int bastok, int sandoria, int windurst});
}

/// @nodoc
class _$PlayerRanksCopyWithImpl<$Res> implements $PlayerRanksCopyWith<$Res> {
  _$PlayerRanksCopyWithImpl(this._value, this._then);

  final PlayerRanks _value;
  // ignore: unused_field
  final $Res Function(PlayerRanks) _then;

  @override
  $Res call({
    Object bastok = freezed,
    Object sandoria = freezed,
    Object windurst = freezed,
  }) {
    return _then(_value.copyWith(
      bastok: bastok == freezed ? _value.bastok : bastok as int,
      sandoria: sandoria == freezed ? _value.sandoria : sandoria as int,
      windurst: windurst == freezed ? _value.windurst : windurst as int,
    ));
  }
}

/// @nodoc
abstract class _$PlayerRanksCopyWith<$Res>
    implements $PlayerRanksCopyWith<$Res> {
  factory _$PlayerRanksCopyWith(
          _PlayerRanks value, $Res Function(_PlayerRanks) then) =
      __$PlayerRanksCopyWithImpl<$Res>;
  @override
  $Res call({int bastok, int sandoria, int windurst});
}

/// @nodoc
class __$PlayerRanksCopyWithImpl<$Res> extends _$PlayerRanksCopyWithImpl<$Res>
    implements _$PlayerRanksCopyWith<$Res> {
  __$PlayerRanksCopyWithImpl(
      _PlayerRanks _value, $Res Function(_PlayerRanks) _then)
      : super(_value, (v) => _then(v as _PlayerRanks));

  @override
  _PlayerRanks get _value => super._value as _PlayerRanks;

  @override
  $Res call({
    Object bastok = freezed,
    Object sandoria = freezed,
    Object windurst = freezed,
  }) {
    return _then(_PlayerRanks(
      bastok: bastok == freezed ? _value.bastok : bastok as int,
      sandoria: sandoria == freezed ? _value.sandoria : sandoria as int,
      windurst: windurst == freezed ? _value.windurst : windurst as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlayerRanks implements _PlayerRanks {
  _$_PlayerRanks({this.bastok, this.sandoria, this.windurst});

  factory _$_PlayerRanks.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerRanksFromJson(json);

  @override
  final int bastok;
  @override
  final int sandoria;
  @override
  final int windurst;

  @override
  String toString() {
    return 'PlayerRanks(bastok: $bastok, sandoria: $sandoria, windurst: $windurst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerRanks &&
            (identical(other.bastok, bastok) ||
                const DeepCollectionEquality().equals(other.bastok, bastok)) &&
            (identical(other.sandoria, sandoria) ||
                const DeepCollectionEquality()
                    .equals(other.sandoria, sandoria)) &&
            (identical(other.windurst, windurst) ||
                const DeepCollectionEquality()
                    .equals(other.windurst, windurst)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bastok) ^
      const DeepCollectionEquality().hash(sandoria) ^
      const DeepCollectionEquality().hash(windurst);

  @override
  _$PlayerRanksCopyWith<_PlayerRanks> get copyWith =>
      __$PlayerRanksCopyWithImpl<_PlayerRanks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerRanksToJson(this);
  }
}

abstract class _PlayerRanks implements PlayerRanks {
  factory _PlayerRanks({int bastok, int sandoria, int windurst}) =
      _$_PlayerRanks;

  factory _PlayerRanks.fromJson(Map<String, dynamic> json) =
      _$_PlayerRanks.fromJson;

  @override
  int get bastok;
  @override
  int get sandoria;
  @override
  int get windurst;
  @override
  _$PlayerRanksCopyWith<_PlayerRanks> get copyWith;
}
