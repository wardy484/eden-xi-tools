import 'package:async/async.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_show/player_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_details_controller.g.dart';

@riverpod
class PlayerDetailsController extends _$PlayerDetailsController {
  @override
  FutureOr<PlayerDetails> build(String playerName) async {
    final eden = ref.read(edenProvider);
    final futures = FutureGroup();

    futures.add(eden.players.getPlayer(playerName));
    futures.add(eden.players.getCrafts(playerName));
    futures.add(eden.players.getEquipment(playerName));
    futures.add(eden.players.getAuctionHouseItems(playerName));
    futures.add(eden.players.getBazaarItems(playerName));
    futures.close();

    final results = await futures.future;

    return PlayerDetails(
      details: results[0],
      crafts: results[1],
      equipment: results[2],
      auctionHouseItems: results[3],
      bazaarItems: results[4],
    );
  }
}
