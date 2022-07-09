import 'package:eden_xi_tools/player_show/widgets/player_auction_house_item_card.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlayerShowAuctionHouse extends StatelessWidget {
  final List<PlayerAuctionHouseItem> items;
  final Future<void> Function() onRefresh;

  const PlayerShowAuctionHouse({
    Key? key,
    required this.items,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return CenteredMessage("No auction house history...");
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
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
