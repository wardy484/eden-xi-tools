import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

final defaultStatus = Status(online: true, players: 0);

@freezed
class Status with _$Status {
  factory Status({
    required bool online,
    required int players,
  }) = _Status;
}
