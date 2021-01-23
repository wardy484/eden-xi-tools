import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

final defaultStatus = Status(online: true, players: 0);

@freezed
abstract class Status with _$Status {
  factory Status({bool online, int players}) = _Status;
}
