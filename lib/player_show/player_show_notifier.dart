import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

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

      final results = await Future.wait(futures);

      state = PlayerShowState.loaded(
        playerResult: playerResult,
        player: results[0],
        equipment: results[1],
        auctionHouseItems: results[2],
        bazaarItems: results[3],
        crafts: results[4],
      );
    } catch (error, stackTrace) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
      );

      state = PlayerShowState.error(
        "Some went wrong fetching player info, please try again later.",
      );
    }
  }
}
