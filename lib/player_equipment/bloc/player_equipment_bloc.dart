import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'player_equipment_event.dart';
part 'player_equipment_state.dart';
part 'player_equipment_bloc.freezed.dart';

final playerEquipmentProvider = Provider.autoDispose<PlayerEquipmentBloc>(
  (ref) => PlayerEquipmentBloc(eden: ref.read(edenProvider)),
);

class PlayerEquipmentBloc
    extends Bloc<PlayerEquipmentEvent, PlayerEquipmentState> {
  final EdenXiApi eden;

  PlayerEquipmentBloc({
    required this.eden,
  }) : super(_Initial()) {
    on<PlayerEquipmentEvent>(_onEvent);
  }

  void _onEvent(
    PlayerEquipmentEvent event,
    Emitter<PlayerEquipmentState> emit,
  ) async {
    emit(PlayerEquipmentState.loading());

    emit(
      await event.map(
        started: (e) => PlayerEquipmentState.initial(),
        fetched: (e) async {
          var equipment = await eden.players.getEquipment(e.playerName);

          return PlayerEquipmentState.loaded(equipment);
        },
      ),
    );
  }
}
