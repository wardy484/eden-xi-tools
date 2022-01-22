// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bazaar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BazaarItem _$BazaarItemFromJson(Map<String, dynamic> json) {
  return _BazaarItem.fromJson(json);
}

/// @nodoc
class _$BazaarItemTearOff {
  const _$BazaarItemTearOff();

  _BazaarItem call(
      {required int bazaar,
      required String charname,
      @JsonKey(name: 'online_flag') required int onlineFlag}) {
    return _BazaarItem(
      bazaar: bazaar,
      charname: charname,
      onlineFlag: onlineFlag,
    );
  }

  BazaarItem fromJson(Map<String, Object?> json) {
    return BazaarItem.fromJson(json);
  }
}

/// @nodoc
const $BazaarItem = _$BazaarItemTearOff();

/// @nodoc
mixin _$BazaarItem {
  int get bazaar => throw _privateConstructorUsedError;
  String get charname => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_flag')
  int get onlineFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BazaarItemCopyWith<BazaarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BazaarItemCopyWith<$Res> {
  factory $BazaarItemCopyWith(
          BazaarItem value, $Res Function(BazaarItem) then) =
      _$BazaarItemCopyWithImpl<$Res>;
  $Res call(
      {int bazaar,
      String charname,
      @JsonKey(name: 'online_flag') int onlineFlag});
}

/// @nodoc
class _$BazaarItemCopyWithImpl<$Res> implements $BazaarItemCopyWith<$Res> {
  _$BazaarItemCopyWithImpl(this._value, this._then);

  final BazaarItem _value;
  // ignore: unused_field
  final $Res Function(BazaarItem) _then;

  @override
  $Res call({
    Object? bazaar = freezed,
    Object? charname = freezed,
    Object? onlineFlag = freezed,
  }) {
    return _then(_value.copyWith(
      bazaar: bazaar == freezed
          ? _value.bazaar
          : bazaar // ignore: cast_nullable_to_non_nullable
              as int,
      charname: charname == freezed
          ? _value.charname
          : charname // ignore: cast_nullable_to_non_nullable
              as String,
      onlineFlag: onlineFlag == freezed
          ? _value.onlineFlag
          : onlineFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BazaarItemCopyWith<$Res> implements $BazaarItemCopyWith<$Res> {
  factory _$BazaarItemCopyWith(
          _BazaarItem value, $Res Function(_BazaarItem) then) =
      __$BazaarItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int bazaar,
      String charname,
      @JsonKey(name: 'online_flag') int onlineFlag});
}

/// @nodoc
class __$BazaarItemCopyWithImpl<$Res> extends _$BazaarItemCopyWithImpl<$Res>
    implements _$BazaarItemCopyWith<$Res> {
  __$BazaarItemCopyWithImpl(
      _BazaarItem _value, $Res Function(_BazaarItem) _then)
      : super(_value, (v) => _then(v as _BazaarItem));

  @override
  _BazaarItem get _value => super._value as _BazaarItem;

  @override
  $Res call({
    Object? bazaar = freezed,
    Object? charname = freezed,
    Object? onlineFlag = freezed,
  }) {
    return _then(_BazaarItem(
      bazaar: bazaar == freezed
          ? _value.bazaar
          : bazaar // ignore: cast_nullable_to_non_nullable
              as int,
      charname: charname == freezed
          ? _value.charname
          : charname // ignore: cast_nullable_to_non_nullable
              as String,
      onlineFlag: onlineFlag == freezed
          ? _value.onlineFlag
          : onlineFlag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BazaarItem implements _BazaarItem {
  _$_BazaarItem(
      {required this.bazaar,
      required this.charname,
      @JsonKey(name: 'online_flag') required this.onlineFlag});

  factory _$_BazaarItem.fromJson(Map<String, dynamic> json) =>
      _$$_BazaarItemFromJson(json);

  @override
  final int bazaar;
  @override
  final String charname;
  @override
  @JsonKey(name: 'online_flag')
  final int onlineFlag;

  @override
  String toString() {
    return 'BazaarItem(bazaar: $bazaar, charname: $charname, onlineFlag: $onlineFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BazaarItem &&
            (identical(other.bazaar, bazaar) || other.bazaar == bazaar) &&
            (identical(other.charname, charname) ||
                other.charname == charname) &&
            (identical(other.onlineFlag, onlineFlag) ||
                other.onlineFlag == onlineFlag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bazaar, charname, onlineFlag);

  @JsonKey(ignore: true)
  @override
  _$BazaarItemCopyWith<_BazaarItem> get copyWith =>
      __$BazaarItemCopyWithImpl<_BazaarItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BazaarItemToJson(this);
  }
}

abstract class _BazaarItem implements BazaarItem {
  factory _BazaarItem(
      {required int bazaar,
      required String charname,
      @JsonKey(name: 'online_flag') required int onlineFlag}) = _$_BazaarItem;

  factory _BazaarItem.fromJson(Map<String, dynamic> json) =
      _$_BazaarItem.fromJson;

  @override
  int get bazaar;
  @override
  String get charname;
  @override
  @JsonKey(name: 'online_flag')
  int get onlineFlag;
  @override
  @JsonKey(ignore: true)
  _$BazaarItemCopyWith<_BazaarItem> get copyWith =>
      throw _privateConstructorUsedError;
}
