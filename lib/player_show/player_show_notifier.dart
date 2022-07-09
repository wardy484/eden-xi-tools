import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerShowProvider =
    StateNotifierProvider.autoDispose<PlayerShowNotifier, PlayerShowState>(
        (ref) {
  return PlayerShowNotifier(
    eden: ref.read(edenProvider),
  );
});

class PlayerShowNotifier extends StateNotifier<PlayerShowState> {
  final EdenXiApi eden;

  PlayerShowNotifier({
    required this.eden,
  }) : super(PlayerShowState.initial());

  void clear() {
    state = PlayerShowState.initial();
  }

  Future<void> getPlayer(PlayerSearchResultItem playerResult) async {
    state = PlayerShowState.loading();

    try {
      final name = playerResult.charname;
      final List<Future> futures = [
        eden.players.getPlayer(name),
        eden.players.getEquipment(name),
        eden.players.getAuctionHouseItems(name),
        eden.players.getBazaarItems(name),
        eden.players.getCrafts(name),
      ];

      final stuff = await Future.wait(futures);

      state = PlayerShowState.loaded(
        playerResult: playerResult,
        player: stuff[0],
        equipment: stuff[1],
        auctionHouseItems: stuff[2],
        bazaarItems: stuff[3],
        crafts: stuff[4],
      );
    } catch (_) {
      state = PlayerShowState.initial();
    }
  }
}
