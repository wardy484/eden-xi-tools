import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/status/entities/yell/yell.dart';
import 'package:eden_xi_tools/eden/status/repository/status_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'yells_event.dart';
part 'yells_state.dart';
part 'yells_bloc.freezed.dart';

class YellsBloc extends Bloc<YellsEvent, YellsState> {
  StatusRepository statusRepository;

  YellsBloc(this.statusRepository) : super(_Initial());

  @override
  Stream<YellsState> mapEventToState(
    YellsEvent event,
  ) async* {
    yield YellsState.loading();

    yield await event.when(
      started: () => YellsState.initial(),
      requested: () async {
        List<Yell> yells = await statusRepository.getYells();

        return YellsState.loaded(yells);
      },
    );
  }
}
