// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_ranks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerRanks _$PlayerRanksFromJson(Map<String, dynamic> json) {
  return _PlayerRanks.fromJson(json);
}

/// @nodoc
class _$PlayerRanksTearOff {
  const _$PlayerRanksTearOff();

  _PlayerRanks call(
      {required int bastok, required int sandoria, required int windurst}) {
    return _PlayerRanks(
      bastok: bastok,
      sandoria: sandoria,
      windurst: windurst,
    );
  }

  PlayerRanks fromJson(Map<String, Object?> json) {
    return PlayerRanks.fromJson(json);
  }
}

/// @nodoc
const $PlayerRanks = _$PlayerRanksTearOff();

/// @nodoc
mixin _$PlayerRanks {
  int get bastok => throw _privateConstructorUsedError;
  int get sandoria => throw _privateConstructorUsedError;
  int get windurst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerRanksCopyWith<PlayerRanks> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? bastok = freezed,
    Object? sandoria = freezed,
    Object? windurst = freezed,
  }) {
    return _then(_value.copyWith(
      bastok: bastok == freezed
          ? _value.bastok
          : bastok // ignore: cast_nullable_to_non_nullable
              as int,
      sandoria: sandoria == freezed
          ? _value.sandoria
          : sandoria // ignore: cast_nullable_to_non_nullable
              as int,
      windurst: windurst == freezed
          ? _value.windurst
          : windurst // ignore: cast_nullable_to_non_nullable
              as int,
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
    Object? bastok = freezed,
    Object? sandoria = freezed,
    Object? windurst = freezed,
  }) {
    return _then(_PlayerRanks(
      bastok: bastok == freezed
          ? _value.bastok
          : bastok // ignore: cast_nullable_to_non_nullable
              as int,
      sandoria: sandoria == freezed
          ? _value.sandoria
          : sandoria // ignore: cast_nullable_to_non_nullable
              as int,
      windurst: windurst == freezed
          ? _value.windurst
          : windurst // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerRanks implements _PlayerRanks {
  _$_PlayerRanks(
      {required this.bastok, required this.sandoria, required this.windurst});

  factory _$_PlayerRanks.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerRanksFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _PlayerRanks &&
            (identical(other.bastok, bastok) || other.bastok == bastok) &&
            (identical(other.sandoria, sandoria) ||
                other.sandoria == sandoria) &&
            (identical(other.windurst, windurst) ||
                other.windurst == windurst));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bastok, sandoria, windurst);

  @JsonKey(ignore: true)
  @override
  _$PlayerRanksCopyWith<_PlayerRanks> get copyWith =>
      __$PlayerRanksCopyWithImpl<_PlayerRanks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerRanksToJson(this);
  }
}

abstract class _PlayerRanks implements PlayerRanks {
  factory _PlayerRanks(
      {required int bastok,
      required int sandoria,
      required int windurst}) = _$_PlayerRanks;

  factory _PlayerRanks.fromJson(Map<String, dynamic> json) =
      _$_PlayerRanks.fromJson;

  @override
  int get bastok;
  @override
  int get sandoria;
  @override
  int get windurst;
  @override
  @JsonKey(ignore: true)
  _$PlayerRanksCopyWith<_PlayerRanks> get copyWith =>
      throw _privateConstructorUsedError;
}
