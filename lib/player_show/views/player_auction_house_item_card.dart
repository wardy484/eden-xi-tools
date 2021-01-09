import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/item_auction_house/views/item_auction_house_card.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

class PlayerAuctionHouseItemCard extends StatelessWidget {
  final PlayerAuctionHouseItem item;

  const PlayerAuctionHouseItemCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 16),
              child: Text(buildTitle(), style: SubHeading),
            ),
          ],
        ),
        ItemAuctionHouseCard(item: item.toAuctionHouseItem()),
      ],
    );
  }

  String buildTitle() {
    String name = (new ReCase(item.name)).titleCase;

    if (item.stackSize > 1) {
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
