// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'yell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Yell _$YellFromJson(Map<String, dynamic> json) {
  return _Yell.fromJson(json);
}

/// @nodoc
class _$YellTearOff {
  const _$YellTearOff();

// ignore: unused_element
  _Yell call(int date, String speaker, String message) {
    return _Yell(
      date,
      speaker,
      message,
    );
  }

// ignore: unused_element
  Yell fromJson(Map<String, Object> json) {
    return Yell.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Yell = _$YellTearOff();

/// @nodoc
mixin _$Yell {
  int get date;
  String get speaker;
  String get message;

  Map<String, dynamic> toJson();
  $YellCopyWith<Yell> get copyWith;
}

/// @nodoc
abstract class $YellCopyWith<$Res> {
  factory $YellCopyWith(Yell value, $Res Function(Yell) then) =
      _$YellCopyWithImpl<$Res>;
  $Res call({int date, String speaker, String message});
}

/// @nodoc
class _$YellCopyWithImpl<$Res> implements $YellCopyWith<$Res> {
  _$YellCopyWithImpl(this._value, this._then);

  final Yell _value;
  // ignore: unused_field
  final $Res Function(Yell) _then;

  @override
  $Res call({
    Object date = freezed,
    Object speaker = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as int,
      speaker: speaker == freezed ? _value.speaker : speaker as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$YellCopyWith<$Res> implements $YellCopyWith<$Res> {
  factory _$YellCopyWith(_Yell value, $Res Function(_Yell) then) =
      __$YellCopyWithImpl<$Res>;
  @override
  $Res call({int date, String speaker, String message});
}

/// @nodoc
class __$YellCopyWithImpl<$Res> extends _$YellCopyWithImpl<$Res>
    implements _$YellCopyWith<$Res> {
  __$YellCopyWithImpl(_Yell _value, $Res Function(_Yell) _then)
      : super(_value, (v) => _then(v as _Yell));

  @override
  _Yell get _value => super._value as _Yell;

  @override
  $Res call({
    Object date = freezed,
    Object speaker = freezed,
    Object message = freezed,
  }) {
    return _then(_Yell(
      date == freezed ? _value.date : date as int,
      speaker == freezed ? _value.speaker : speaker as String,
      message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Yell implements _Yell {
  _$_Yell(this.date, this.speaker, this.message)
      : assert(date != null),
        assert(speaker != null),
        assert(message != null);

  factory _$_Yell.fromJson(Map<String, dynamic> json) =>
      _$_$_YellFromJson(json);

  @override
  final int date;
  @override
  final String speaker;
  @override
  final String message;

  @override
  String toString() {
    return 'Yell(date: $date, speaker: $speaker, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Yell &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.speaker, speaker) ||
                const DeepCollectionEquality()
                    .equals(other.speaker, speaker)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(speaker) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$YellCopyWith<_Yell> get copyWith =>
      __$YellCopyWithImpl<_Yell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_YellToJson(this);
  }
}

abstract class _Yell implements Yell {
  factory _Yell(int date, String speaker, String message) = _$_Yell;

  factory _Yell.fromJson(Map<String, dynamic> json) = _$_Yell.fromJson;

  @override
  int get date;
  @override
  String get speaker;
  @override
  String get message;
  @override
  _$YellCopyWith<_Yell> get copyWith;
}
