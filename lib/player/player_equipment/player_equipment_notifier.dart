import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eden_xi_tools/player/player_equipment/player_equipment_state.dart';

final playerEquipmentProvider = StateNotifierProvider.autoDispose<
    PlayerEquipmentNotifier, PlayerEquipmentState>(
  (ref) => PlayerEquipmentNotifier(eden: ref.read(edenProvider)),
);

class PlayerEquipmentNotifier extends StateNotifier<PlayerEquipmentState> {
  final EdenXiApi eden;

  PlayerEquipmentNotifier({
    required this.eden,
  }) : super(PlayerEquipmentState.initial());

  Future<void> fetch(String playerName) async {
    state = PlayerEquipmentState.loading();

    var equipment = await eden.players.getEquipment(playerName);

    state = PlayerEquipmentState.loaded(equipment);
  }
}
