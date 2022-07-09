import 'dart:async';
import 'package:eden_xi_tools/player_show/player_show_notifier.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_loading_state.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_success_state.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerShowPage extends ConsumerStatefulWidget {
  final PlayerSearchResultItem playerResult;

  const PlayerShowPage({
    Key? key,
    required this.playerResult,
  }) : super(key: key);

  @override
  _PlayerShowPageState createState() => _PlayerShowPageState();
}

class _PlayerShowPageState extends ConsumerState<PlayerShowPage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();

    ref.read(playerShowProvider.notifier).getPlayer(widget.playerResult);

    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(playerShowProvider,
        (PlayerShowState? previous, PlayerShowState next) {
      previous?.whenOrNull(
        loading: () {
          next.whenOrNull(
            loaded: (
              playerResult,
              player,
              equipment,
              auctionHouseItems,
              bazaarItems,
              crafts,
            ) {
              _refreshCompleter.complete();
              _refreshCompleter = Completer();
            },
          );
        },
      );
    });

    return ref.watch(playerShowProvider).maybeWhen(
          loaded: (
            playerResult,
            player,
            equipment,
            auctionHouseItems,
            bazaarItems,
            crafts,
          ) =>
              PlayerShowSuccessState(
            playerResult: playerResult,
            player: player,
            equipment: equipment,
            auctionHouseItems: auctionHouseItems,
            bazaarItems: bazaarItems,
            crafts: crafts,
            onRefreshPressed: _refreshPage,
          ),
          orElse: () =>
              PlayerShowLoadingState(playerResult: widget.playerResult),
        );
  }

  Future<void> _refreshPage() {
    ref.watch(playerShowProvider.notifier).getPlayer(widget.playerResult);

    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
