import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/status/entities/status.dart';
import 'package:eden_xi_tools/eden/status/repository/status_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_status_event.dart';
part 'server_status_state.dart';
part 'server_status_bloc.freezed.dart';

class ServerStatusBloc extends Bloc<ServerStatusEvent, ServerStatusState> {
  final StatusRepository statusRepository;

  ServerStatusBloc({@required this.statusRepository}) : super(_Initial());

  @override
  Stream<ServerStatusState> mapEventToState(
    ServerStatusEvent event,
  ) async* {
    if (event is _Fetched) {
      yield ServerStatusState.loading();

      Status status = await statusRepository.get();

      if (status.online) {
        yield ServerStatusState.online();
      } else {
        yield ServerStatusState.offline();
      }
    }
  }
}
