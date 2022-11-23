import 'dart:async';
import 'package:eden_xi_tools/item_show/widgets/item_show_scaffold.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourite_button.dart';
import 'package:eden_xi_tools/player_show/player_details_controller.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_header.dart';
import 'package:eden_xi_tools/player_show/widgets/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/widgets/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
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
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(
      playerDetailsControllerProvider(widget.playerResult.charname),
    );

    return ItemShowScaffold(
        header: PlayerShowHeader(playerResult: widget.playerResult),
        body: player.when(
          data: (player) {
            return SwipablePages(
              index: _selectedPageIndex,
              onSwipe: _onPageNavigation,
              pages: [
                PlayerShowDetails(
                  player: player.details,
                  crafts: player.crafts,
                  equipment: player.equipment,
                  onRefresh: _refreshPage,
                ),
                PlayerShowAuctionHouse(
                  items: player.auctionHouseItems,
                  onRefresh: _refreshPage,
                ),
                PlayerShowBazaar(
                  items: player.bazaarItems,
                  onRefresh: _refreshPage,
                ),
              ],
            );
          },
          error: (_, __) =>
              CenteredMessage("Could not load player, please try again later"),
          loading: () => Center(child: CircularProgressIndicator()),
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
    ref.invalidate(playerDetailsControllerProvider);

    return ref.read(
      playerDetailsControllerProvider(widget.playerResult.charname).future,
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }
}
