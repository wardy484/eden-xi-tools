import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/player_show/views/player_auction_house_item_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlayerShowAuctionHouse extends StatelessWidget {
  final List<PlayerAuctionHouseItem> items;
  final Function onRefresh;

  const PlayerShowAuctionHouse({
    Key key,
    this.items,
    this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return Center(
        child: Text("No auction house history..."),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return PlayerAuctionHouseItemCard(item: items[index]);
        },
      ),
    );
  }

  String formatPrice(int price) {
    NumberFormat formatter = NumberFormat("###,###,###,###g");
    return formatter.format(price);
  }
}
