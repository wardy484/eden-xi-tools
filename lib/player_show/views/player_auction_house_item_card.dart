import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/item_auction_house/views/item_auction_house_card.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

class PlayerAuctionHouseItemCard extends StatelessWidget {
  final PlayerAuctionHouseItem item;

  const PlayerAuctionHouseItemCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemAuctionHouseCard(
          item: item.toAuctionHouseItem(),
          title: buildTitle(),
        ),
      ],
    );
  }

  String buildTitle() {
    String name = (new ReCase(item.name)).titleCase;

    if (int.parse(item.stackSize) > 1) {
      return '$name x${item.stackSize}';
    }

    return name;
  }

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    DateFormat formatter = DateFormat.yMd().add_Hm();

    return formatter.format(date);
  }
}
