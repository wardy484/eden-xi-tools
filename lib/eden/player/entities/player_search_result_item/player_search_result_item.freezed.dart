// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_search_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerSearchResultItem _$PlayerSearchResultItemFromJson(
    Map<String, dynamic> json) {
  return _PlayerSearchResultItem.fromJson(json);
}

/// @nodoc
class _$PlayerSearchResultItemTearOff {
  const _$PlayerSearchResultItemTearOff();

  _PlayerSearchResultItem call(
      {required String avatar,
      required String charname,
      required String jobString}) {
    return _PlayerSearchResultItem(
      avatar: avatar,
      charname: charname,
      jobString: jobString,
    );
  }

  PlayerSearchResultItem fromJson(Map<String, Object?> json) {
    return PlayerSearchResultItem.fromJson(json);
  }
}

/// @nodoc
const $PlayerSearchResultItem = _$PlayerSearchResultItemTearOff();

/// @nodoc
mixin _$PlayerSearchResultItem {
  String get avatar => throw _privateConstructorUsedError;
  String get charname => throw _privateConstructorUsedError;
  String get jobString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerSearchResultItemCopyWith<PlayerSearchResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSearchResultItemCopyWith<$Res> {
  factory $PlayerSearchResultItemCopyWith(PlayerSearchResultItem value,
          $Res Function(PlayerSearchResultItem) then) =
      _$PlayerSearchResultItemCopyWithImpl<$Res>;
  $Res call({String avatar, String charname, String jobString});
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
    Object? avatar = freezed,
    Object? charname = freezed,
    Object? jobString = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      charname: charname == freezed
          ? _value.charname
          : charname // ignore: cast_nullable_to_non_nullable
              as String,
      jobString: jobString == freezed
          ? _value.jobString
          : jobString // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String avatar, String charname, String jobString});
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
    Object? avatar = freezed,
    Object? charname = freezed,
    Object? jobString = freezed,
  }) {
    return _then(_PlayerSearchResultItem(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      charname: charname == freezed
          ? _value.charname
          : charname // ignore: cast_nullable_to_non_nullable
              as String,
      jobString: jobString == freezed
          ? _value.jobString
          : jobString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerSearchResultItem implements _PlayerSearchResultItem {
  _$_PlayerSearchResultItem(
      {required this.avatar, required this.charname, required this.jobString});

  factory _$_PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerSearchResultItemFromJson(json);

  @override
  final String avatar;
  @override
  final String charname;
  @override
  final String jobString;

  @override
  String toString() {
    return 'PlayerSearchResultItem(avatar: $avatar, charname: $charname, jobString: $jobString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerSearchResultItem &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.charname, charname) ||
                other.charname == charname) &&
            (identical(other.jobString, jobString) ||
                other.jobString == jobString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar, charname, jobString);

  @JsonKey(ignore: true)
  @override
  _$PlayerSearchResultItemCopyWith<_PlayerSearchResultItem> get copyWith =>
      __$PlayerSearchResultItemCopyWithImpl<_PlayerSearchResultItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerSearchResultItemToJson(this);
  }
}

abstract class _PlayerSearchResultItem implements PlayerSearchResultItem {
  factory _PlayerSearchResultItem(
      {required String avatar,
      required String charname,
      required String jobString}) = _$_PlayerSearchResultItem;

  factory _PlayerSearchResultItem.fromJson(Map<String, dynamic> json) =
      _$_PlayerSearchResultItem.fromJson;

  @override
  String get avatar;
  @override
  String get charname;
  @override
  String get jobString;
  @override
  @JsonKey(ignore: true)
  _$PlayerSearchResultItemCopyWith<_PlayerSearchResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}
