import 'dart:async';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourite_button.dart';
import 'package:eden_xi_tools/player_show/player_show_notifier.dart';
import 'package:eden_xi_tools/player_show/player_show_state.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_header.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
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
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();

    ref.read(playerShowProvider.notifier).getPlayer(widget.playerResult);

    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    _registerLoadingListener();

    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text("test"),
    //     ),
    //     body: Container(
    //       child: Column(
    //         children: [Text("sdfds")],
    //       ),
    //     ));
    return ItemShowScaffold(
        header: PlayerShowHeader(playerResult: widget.playerResult),
        body: ref.watch(playerShowProvider).maybeWhen(
              loaded: (
                playerResult,
                player,
                equipment,
                auctionHouseItems,
                bazaarItems,
                crafts,
              ) {
                return SwipablePages(
                  index: _selectedPageIndex,
                  onSwipe: _onPageNavigation,
                  pages: [
                    PlayerShowDetails(
                      player: player,
                      crafts: crafts,
                      equipment: equipment,
                      onRefresh: _refreshPage,
                    ),
                    PlayerShowAuctionHouse(
                      items: auctionHouseItems,
                      onRefresh: _refreshPage,
                    ),
                    PlayerShowBazaar(
                      items: bazaarItems,
                      onRefresh: _refreshPage,
                    ),
                  ],
                );
              },
              orElse: () => Center(child: CircularProgressIndicator()),
            ),
        bottomNavigationBar: PlayerShowNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _onPageNavigation,
        ),
        actions: [
          PlayerFavouriteButton(player: widget.playerResult),
        ]);
  }

  Future<void> _refreshPage() {
    ref.watch(playerShowProvider.notifier).getPlayer(widget.playerResult);

    return _refreshCompleter.future;
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }

  void _registerLoadingListener() {
    ref.listen(playerShowProvider, (
      PlayerShowState? previous,
      PlayerShowState next,
    ) {
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
  }
}
