// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player_search_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayerSearchResultItem _$PlayerSearchResultItemFromJson(
    Map<String, dynamic> json) {
  return _PlayerSearchResultItem.fromJson(json);
}

/// @nodoc
class _$PlayerSearchResultItemTearOff {
  const _$PlayerSearchResultItemTearOff();

// ignore: unused_element
  _PlayerSearchResultItem call(
      {String avatar, String charname, String jobString, String title}) {
    return _PlayerSearchResultItem(
      avatar: avatar,
      charname: charname,
      jobString: jobString,
      title: title,
    );
  }

// ignore: unused_element
  PlayerSearchResultItem fromJson(Map<String, Object> json) {
    return PlayerSearchResultItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerSearchResultItem = _$PlayerSearchResultItemTearOff();

/// @nodoc
mixin _$PlayerSearchResultItem {
  String get avatar;
  String get charname;
  String get jobString;
  String get title;

  Map<String, dynamic> toJson();
  $PlayerSearchResultItemCopyWith<PlayerSearchResultItem> get copyWith;
}

/// @nodoc
abstract class $PlayerSearchResultItemCopyWith<$Res> {
  factory $PlayerSearchResultItemCopyWith(PlayerSearchResultItem value,
          $Res Function(PlayerSearchResultItem) then) =
      _$PlayerSearchResultItemCopyWithImpl<$Res>;
  $Res call({String avatar, String charname, String jobString, String title});
}

/// @nodoc
class _$PlayerSearchResultItemCopyWithImpl<$Res>
    implements $PlayerSearchResultItemCopyWith<$Res> {
  _$PlayerSearchResultItemCopyWithImpl(this._value, this._then);

  final PlayerSearchResultItem _value;
  // ignore: unused_field
  final $Res Function(PlayerSearchResultItem) _then;

  @override
  $Res call({
    Object avatar = freezed,
    Object charname = freezed,
    Object jobString = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      charname: charname == freezed ? _value.charname : charname as String,
      jobString: jobString == freezed ? _value.jobString : jobString as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayerSearchResultItemCopyWith<$Res>
    implements $PlayerSearchResultItemCopyWith<$Res> {
  factory _$PlayerSearchResultItemCopyWith(_PlayerSearchResultItem value,
          $Res Function(_PlayerSearchResultItem) then) =
      __$PlayerSearchResultItemCopyWithImpl<$Res>;
  @override
  $Res call({String avatar, String charname, String jobString, String title});
}

/// @nodoc
class __$PlayerSearchResultItemCopyWithImpl<$Res>
    extends _$PlayerSearchResultItemCopyWithImpl<$Res>
    implements _$PlayerSearchResultItemCopyWith<$Res> {
  __$PlayerSearchResultItemCopyWithImpl(_PlayerSearchResultItem _value,
      $Res Function(_PlayerSearchResultItem) _then)
      : super(_value, (v) => _then(v as _PlayerSearchResultItem));

  @override
  _PlayerSearchResultItem get _value => super._value as _PlayerSearchResultItem;

  @override
  $Res call({
    Object avatar = freezed,
    Object charname = freezed,
    Object jobString = freezed,
    Object title = freezed,
  }) {
    return _then(_PlayerSearchResultItem(
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      charname: charname == freezed ? _value.charname : charname as String,
      jobString: jobString == freezed ? _value.jobString : jobString as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlayerSearchResultItem implements _PlayerSearchResultItem {
  _$_PlayerSearchResultItem(
      {this.avatar, this.charname, this.jobString, this.title});

  factory _$_PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerSearchResultItemFromJson(json);

  @override
  final String avatar;
  @override
  final String charname;
  @override
  final String jobString;
  @override
  final String title;

  @override
  String toString() {
    return 'PlayerSearchResultItem(avatar: $avatar, charname: $charname, jobString: $jobString, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerSearchResultItem &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.charname, charname) ||
                const DeepCollectionEquality()
                    .equals(other.charname, charname)) &&
            (identical(other.jobString, jobString) ||
                const DeepCollectionEquality()
                    .equals(other.jobString, jobString)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(charname) ^
      const DeepCollectionEquality().hash(jobString) ^
      const DeepCollectionEquality().hash(title);

  @override
  _$PlayerSearchResultItemCopyWith<_PlayerSearchResultItem> get copyWith =>
      __$PlayerSearchResultItemCopyWithImpl<_PlayerSearchResultItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerSearchResultItemToJson(this);
  }
}

abstract class _PlayerSearchResultItem implements PlayerSearchResultItem {
  factory _PlayerSearchResultItem(
      {String avatar,
      String charname,
      String jobString,
      String title}) = _$_PlayerSearchResultItem;

  factory _PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =
      _$_PlayerSearchResultItem.fromJson;

  @override
  String get avatar;
  @override
  String get charname;
  @override
  String get jobString;
  @override
  String get title;
  @override
  _$PlayerSearchResultItemCopyWith<_PlayerSearchResultItem> get copyWith;
}
