import 'package:eden_xi_tools/item_show/widgets/item_auction_house_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
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
