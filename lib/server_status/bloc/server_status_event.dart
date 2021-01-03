part of 'server_status_bloc.dart';

@freezed
abstract class ServerStatusEvent with _$ServerStatusEvent {
  const factory ServerStatusEvent.started() = _Started;
  const factory ServerStatusEvent.fetched() = _Fetched;
}
