import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'yells_event.dart';
part 'yells_state.dart';
part 'yells_bloc.freezed.dart';

final yellsProvider = Provider.autoDispose((ref) {
  return YellsBloc(
    eden: ref.read(edenProvider),
  );
});

class YellsBloc extends Bloc<YellsEvent, YellsState> {
  EdenXiApi eden;

  YellsBloc({
    required this.eden,
  }) : super(_Initial()) {
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
          List<Yell> yells = await eden.server.getYells();

          return YellsState.loaded(yells);
        },
      ),
    );
  }
}
