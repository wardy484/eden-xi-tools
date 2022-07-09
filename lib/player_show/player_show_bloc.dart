import 'package:bloc/bloc.dart';
import 'package:eden_xi_tools/eden/eden_provider.dart';
import 'package:eden_xi_tools/player_show/player_show_events.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final playerShowProvider = Provider.autoDispose<PlayerShowBloc>(
  (ref) => PlayerShowBloc(eden: ref.read(edenProvider)),
);

class PlayerShowBloc extends Bloc<PlayerShowEvent, PlayerShowState> {
  final EdenXiApi eden;
  final limit = 30;

  PlayerShowBloc({
    required this.eden,
  }) : super(PlayerShowInitial()) {
    on<PlayerShowEvent>(_onEvent);
  }
  void _onEvent(
    PlayerShowEvent event,
    Emitter<PlayerShowState> emit,
  ) async {
    if (event is PlayerShowClear) {
      emit(PlayerShowInitial());
    }

    if (event is PlayerShowRequested) {
      try {
        emit(PlayerShowInitial());

        final name = event.playerResult.charname;

        final player = await eden.players.getPlayer(name);
        final bazaarItems = await eden.players.getBazaarItems(name);
        final crafting = await eden.players.getCrafts(name);
        final auctionHouseItems = await eden.players.getAuctionHouseItems(name);

        emit(
          PlayerShowSuccess(
            playerResult: event.playerResult,
            auctionHouseItems: auctionHouseItems,
            bazaarItems: bazaarItems,
            player: player,
            crafts: crafting,
          ),
        );

        // return;
      } catch (_) {
        emit(PlayerShowFailure());
      }
    }
  }
}
