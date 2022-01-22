import 'package:eden_xi_tools/eden/misc/entities/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_status_state.freezed.dart';

@freezed
class ServerStatusState with _$ServerStatusState {
  const factory ServerStatusState.initial() = _Initial;
  const factory ServerStatusState.loading() = _Loading;
  const factory ServerStatusState.fetched(Status status) = _Fetched;
}
