import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/misc/entities/yell/yell.dart';
import 'package:eden_xi_tools/eden/misc/repository/misc_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'yells_event.dart';
part 'yells_state.dart';
part 'yells_bloc.freezed.dart';

class YellsBloc extends Bloc<YellsEvent, YellsState> {
  MiscRepository statusRepository;

  YellsBloc(this.statusRepository) : super(_Initial()) {
    on<YellsEvent>(_onEvent);
  }

  void _onEvent(
    YellsEvent event,
    Emitter<YellsState> emit,
  ) async {
    emit(YellsState.loading());

    emit(
      await event.when(
        started: () => YellsState.initial(),
        requested: () async {
          List<Yell> yells = await statusRepository.getYells();

          return YellsState.loaded(yells);
        },
      ),
    );
  }
}
