import 'package:eden_xi_tools/player_favourites/views/player_favourite_button.dart';
import 'package:eden_xi_tools/player_show/views/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_header.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowSuccessState extends StatefulWidget {
  final PlayerSearchResultItem playerResult;
  final Player player;
  final PlayerEquipment equipment;
  final List<PlayerAuctionHouseItem> auctionHouseItems;
  final List<PlayerBazaarItem> bazaarItems;
  final PlayerCrafts crafts;

  final Future<void> Function() onRefreshPressed;

  const PlayerShowSuccessState({
    Key? key,
    required this.playerResult,
    required this.player,
    required this.equipment,
    required this.auctionHouseItems,
    required this.bazaarItems,
    required this.crafts,
    required this.onRefreshPressed,
  }) : super(key: key);

  @override
  _PlayerShowSuccessStateState createState() => _PlayerShowSuccessStateState();
}

class _PlayerShowSuccessStateState extends State<PlayerShowSuccessState> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final PlayerSearchResultItem playerResult = widget.playerResult;

    return ItemShowScaffold(
      header: PlayerShowHeader(playerResult: playerResult),
      actions: [
        PlayerFavouriteButton(player: playerResult),
      ],
      body: SwipablePages(
        index: _selectedPageIndex,
        onSwipe: _onPageNavigation,
        pages: [
          PlayerShowDetails(
            player: widget.player,
            crafts: widget.crafts,
            equipment: widget.equipment,
            onRefresh: widget.onRefreshPressed,
          ),
          PlayerShowAuctionHouse(
            items: widget.auctionHouseItems,
            onRefresh: widget.onRefreshPressed,
          ),
          PlayerShowBazaar(
            items: widget.bazaarItems,
            onRefresh: widget.onRefreshPressed,
          ),
        ],
      ),
      bottomNavigationBar: PlayerShowNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onPageNavigation,
      ),
    );
  }

  void _onPageNavigation(int index) {
    setState(() => _selectedPageIndex = index);
  }
}
