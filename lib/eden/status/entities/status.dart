import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
abstract class Status with _$Status {
  factory Status({bool online}) = _Status;
}
