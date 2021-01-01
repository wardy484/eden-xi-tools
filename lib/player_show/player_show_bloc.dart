import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/player/repository/player_repository.dart';
import 'package:eden_xi_tools/player_show/player_show_events.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:meta/meta.dart';

class PlayerShowBloc extends Bloc<PlayerShowEvent, PlayerShowState> {
  final PlayerRepository playerRepository;
  final limit = 30;

  PlayerShowBloc({@required this.playerRepository})
      : super(PlayerShowInitial());

  @override
  Stream<PlayerShowState> mapEventToState(PlayerShowEvent event) async* {
    if (event is PlayerShowClear) {
      yield PlayerShowInitial();
    }

    if (event is PlayerShowRequested) {
      try {
        yield PlayerShowInitial();

        final name = event.playerResult.charname;

        final player = await playerRepository.getPlayer(name);
        final bazaarItems = await playerRepository.getBazaarItems(name);
        final crafting = await playerRepository.getCrafts(name);
        final auctionHouseItems =
            await playerRepository.getAuctionHouseItems(name);

        yield PlayerShowSuccess(
          playerResult: event.playerResult,
          auctionHouseItems: auctionHouseItems,
          bazaarItems: bazaarItems,
          player: player,
          crafts: crafting,
        );

        // return;
      } catch (_) {
        yield PlayerShowFailure();
      }
    }
  }
}
