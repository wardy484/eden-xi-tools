// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'yell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Yell _$YellFromJson(Map<String, dynamic> json) {
  return _Yell.fromJson(json);
}

/// @nodoc
class _$YellTearOff {
  const _$YellTearOff();

  _Yell call(int date, String speaker, String message) {
    return _Yell(
      date,
      speaker,
      message,
    );
  }

  Yell fromJson(Map<String, Object?> json) {
    return Yell.fromJson(json);
  }
}

/// @nodoc
const $Yell = _$YellTearOff();

/// @nodoc
mixin _$Yell {
  int get date => throw _privateConstructorUsedError;
  String get speaker => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YellCopyWith<Yell> get copyWith => throw _privateConstructorUsedError;
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
    Object? date = freezed,
    Object? speaker = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
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
    Object? date = freezed,
    Object? speaker = freezed,
    Object? message = freezed,
  }) {
    return _then(_Yell(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Yell implements _Yell {
  _$_Yell(this.date, this.speaker, this.message);

  factory _$_Yell.fromJson(Map<String, dynamic> json) => _$$_YellFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _Yell &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, speaker, message);

  @JsonKey(ignore: true)
  @override
  _$YellCopyWith<_Yell> get copyWith =>
      __$YellCopyWithImpl<_Yell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YellToJson(this);
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
  @JsonKey(ignore: true)
  _$YellCopyWith<_Yell> get copyWith => throw _privateConstructorUsedError;
}
