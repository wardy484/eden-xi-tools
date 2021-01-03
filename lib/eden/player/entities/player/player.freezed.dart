// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

// ignore: unused_element
  _Player call(
      {String avatar,
      int id,
      String jobString,
      PlayerJobs jobs,
      int mentor,
      String name,
      int nameFlags,
      int nation,
      PlayerRanks ranks,
      String title,
      int online}) {
    return _Player(
      avatar: avatar,
      id: id,
      jobString: jobString,
      jobs: jobs,
      mentor: mentor,
      name: name,
      nameFlags: nameFlags,
      nation: nation,
      ranks: ranks,
      title: title,
      online: online,
    );
  }

// ignore: unused_element
  Player fromJson(Map<String, Object> json) {
    return Player.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  String get avatar;
  int get id;
  String get jobString;
  PlayerJobs get jobs;
  int get mentor;
  String get name;
  int get nameFlags;
  int get nation;
  PlayerRanks get ranks;
  String get title;
  int get online;

  Map<String, dynamic> toJson();
  $PlayerCopyWith<Player> get copyWith;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call(
      {String avatar,
      int id,
      String jobString,
      PlayerJobs jobs,
      int mentor,
      String name,
      int nameFlags,
      int nation,
      PlayerRanks ranks,
      String title,
      int online});

  $PlayerJobsCopyWith<$Res> get jobs;
  $PlayerRanksCopyWith<$Res> get ranks;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object avatar = freezed,
    Object id = freezed,
    Object jobString = freezed,
    Object jobs = freezed,
    Object mentor = freezed,
    Object name = freezed,
    Object nameFlags = freezed,
    Object nation = freezed,
    Object ranks = freezed,
    Object title = freezed,
    Object online = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      id: id == freezed ? _value.id : id as int,
      jobString: jobString == freezed ? _value.jobString : jobString as String,
      jobs: jobs == freezed ? _value.jobs : jobs as PlayerJobs,
      mentor: mentor == freezed ? _value.mentor : mentor as int,
      name: name == freezed ? _value.name : name as String,
      nameFlags: nameFlags == freezed ? _value.nameFlags : nameFlags as int,
      nation: nation == freezed ? _value.nation : nation as int,
      ranks: ranks == freezed ? _value.ranks : ranks as PlayerRanks,
      title: title == freezed ? _value.title : title as String,
      online: online == freezed ? _value.online : online as int,
    ));
  }

  @override
  $PlayerJobsCopyWith<$Res> get jobs {
    if (_value.jobs == null) {
      return null;
    }
    return $PlayerJobsCopyWith<$Res>(_value.jobs, (value) {
      return _then(_value.copyWith(jobs: value));
    });
  }

  @override
  $PlayerRanksCopyWith<$Res> get ranks {
    if (_value.ranks == null) {
      return null;
    }
    return $PlayerRanksCopyWith<$Res>(_value.ranks, (value) {
      return _then(_value.copyWith(ranks: value));
    });
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String avatar,
      int id,
      String jobString,
      PlayerJobs jobs,
      int mentor,
      String name,
      int nameFlags,
      int nation,
      PlayerRanks ranks,
      String title,
      int online});

  @override
  $PlayerJobsCopyWith<$Res> get jobs;
  @override
  $PlayerRanksCopyWith<$Res> get ranks;
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object avatar = freezed,
    Object id = freezed,
    Object jobString = freezed,
    Object jobs = freezed,
    Object mentor = freezed,
    Object name = freezed,
    Object nameFlags = freezed,
    Object nation = freezed,
    Object ranks = freezed,
    Object title = freezed,
    Object online = freezed,
  }) {
    return _then(_Player(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      id: id == freezed ? _value.id : id as int,
      jobString: jobString == freezed ? _value.jobString : jobString as String,
      jobs: jobs == freezed ? _value.jobs : jobs as PlayerJobs,
      mentor: mentor == freezed ? _value.mentor : mentor as int,
      name: name == freezed ? _value.name : name as String,
      nameFlags: nameFlags == freezed ? _value.nameFlags : nameFlags as int,
      nation: nation == freezed ? _value.nation : nation as int,
      ranks: ranks == freezed ? _value.ranks : ranks as PlayerRanks,
      title: title == freezed ? _value.title : title as String,
      online: online == freezed ? _value.online : online as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Player implements _Player {
  _$_Player(
      {this.avatar,
      this.id,
      this.jobString,
      this.jobs,
      this.mentor,
      this.name,
      this.nameFlags,
      this.nation,
      this.ranks,
      this.title,
      this.online});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerFromJson(json);

  @override
  final String avatar;
  @override
  final int id;
  @override
  final String jobString;
  @override
  final PlayerJobs jobs;
  @override
  final int mentor;
  @override
  final String name;
  @override
  final int nameFlags;
  @override
  final int nation;
  @override
  final PlayerRanks ranks;
  @override
  final String title;
  @override
  final int online;

  @override
  String toString() {
    return 'Player(avatar: $avatar, id: $id, jobString: $jobString, jobs: $jobs, mentor: $mentor, name: $name, nameFlags: $nameFlags, nation: $nation, ranks: $ranks, title: $title, online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.jobString, jobString) ||
                const DeepCollectionEquality()
                    .equals(other.jobString, jobString)) &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.mentor, mentor) ||
                const DeepCollectionEquality().equals(other.mentor, mentor)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameFlags, nameFlags) ||
                const DeepCollectionEquality()
                    .equals(other.nameFlags, nameFlags)) &&
            (identical(other.nation, nation) ||
                const DeepCollectionEquality().equals(other.nation, nation)) &&
            (identical(other.ranks, ranks) ||
                const DeepCollectionEquality().equals(other.ranks, ranks)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(jobString) ^
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(mentor) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameFlags) ^
      const DeepCollectionEquality().hash(nation) ^
      const DeepCollectionEquality().hash(ranks) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(online);

  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerToJson(this);
  }
}

abstract class _Player implements Player {
  factory _Player(
      {String avatar,
      int id,
      String jobString,
      PlayerJobs jobs,
      int mentor,
      String name,
      int nameFlags,
      int nation,
      PlayerRanks ranks,
      String title,
      int online}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get avatar;
  @override
  int get id;
  @override
  String get jobString;
  @override
  PlayerJobs get jobs;
  @override
  int get mentor;
  @override
  String get name;
  @override
  int get nameFlags;
  @override
  int get nation;
  @override
  PlayerRanks get ranks;
  @override
  String get title;
  @override
  int get online;
  @override
  _$PlayerCopyWith<_Player> get copyWith;
}
