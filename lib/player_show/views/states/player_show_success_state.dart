import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/player_show/player_show.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourite_button.dart';
import 'package:eden_xi_tools/player_show/views/player_show_navigation_bar.dart';
import 'package:eden_xi_tools/player_show/views/states/player_show_header.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_auction_house.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_bazaar.dart';
import 'package:eden_xi_tools/player_show/views/tabs/player_show_details.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/item_show/views/item_show_scaffold.dart';

class PlayerShowSuccessState extends StatelessWidget {
  final PlayerShowSuccess state;
  final int currentPageIndex;
  final Function onRefreshPressed;
  final PlayerShowNavigationBar navigationBar;

  const PlayerShowSuccessState({
    Key key,
    @required this.state,
    @required this.currentPageIndex,
    @required this.onRefreshPressed,
    @required this.navigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlayerSearchResultItem playerResult = state.playerResult;

    return ItemShowScaffold(
      header: PlayerShowHeader(playerResult: playerResult),
      actions: [
        PlayerFavouriteButton(player: playerResult),
      ],
      body: Column(
        children: [
          Expanded(
            child: <Widget>[
              PlayerShowDetails(
                player: state.player,
                crafts: state.crafts,
                onRefresh: onRefreshPressed,
              ),
              PlayerShowAuctionHouse(
                items: state.auctionHouseItems,
                onRefresh: onRefreshPressed,
              ),
              PlayerShowBazaar(
                items: state.bazaarItems,
                onRefresh: onRefreshPressed,
              ),
            ].elementAt(currentPageIndex),
          ),
        ],
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
