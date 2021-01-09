part of 'server_status_bloc.dart';

@freezed
abstract class ServerStatusState with _$ServerStatusState {
  const factory ServerStatusState.initial() = _Initial;
  const factory ServerStatusState.loading() = _Loading;
  const factory ServerStatusState.offline() = _Offline;
  const factory ServerStatusState.online(int players) = _Online;
}
