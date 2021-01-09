import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/favourites/views/favourite_button.dart';
import 'package:eden_xi_tools/player_show/player_show.dart';
import 'package:eden_xi_tools/player_show/views/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_header.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_details.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/swipable_pages.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowSuccessState extends StatefulWidget {
  final PlayerShowSuccess state;
  final Function onRefreshPressed;

  const PlayerShowSuccessState({
    Key key,
    @required this.state,
    @required this.onRefreshPressed,
  }) : super(key: key);

  @override
  _PlayerShowSuccessStateState createState() => _PlayerShowSuccessStateState();
}

class _PlayerShowSuccessStateState extends State<PlayerShowSuccessState> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final PlayerSearchResultItem playerResult = widget.state.playerResult;

    return ItemShowScaffold(
      header: PlayerShowHeader(playerResult: playerResult),
      actions: [
        FavouritesButton<PlayerSearchResultItem>(item: playerResult),
      ],
      body: SwipablePages(
        index: _selectedPageIndex,
        onSwipe: _onPageNavigation,
        pages: [
          PlayerShowDetails(
            player: widget.state.player,
            crafts: widget.state.crafts,
            onRefresh: widget.onRefreshPressed,
          ),
          PlayerShowAuctionHouse(
            items: widget.state.auctionHouseItems,
            onRefresh: widget.onRefreshPressed,
          ),
          PlayerShowBazaar(
            items: widget.state.bazaarItems,
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
