import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/entities/player_equipment/player_equipment.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_equipment_event.dart';
part 'player_equipment_state.dart';
part 'player_equipment_bloc.freezed.dart';

class PlayerEquipmentBloc
    extends Bloc<PlayerEquipmentEvent, PlayerEquipmentState> {
  final PlayerRepository playerRepository;

  PlayerEquipmentBloc(this.playerRepository) : super(_Initial());

  @override
  Stream<PlayerEquipmentState> mapEventToState(
    PlayerEquipmentEvent event,
  ) async* {
    yield await event.when(
      started: () => PlayerEquipmentState.initial(),
      fetched: (String playerName) async {
        var equipment = await playerRepository.getEquipment(playerName);

        return PlayerEquipmentState.loaded(equipment);
      },
    );
  }
}
