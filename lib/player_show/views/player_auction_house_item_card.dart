import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';
import 'package:eden_xi_tools/extensions/int.dart';

class PlayerAuctionHouseItemCard extends StatelessWidget {
  final PlayerAuctionHouseItem item;

  const PlayerAuctionHouseItemCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: BoxPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ItemIcon(id: 65535), // Gil
                    SizedBox(width: 8),
                    Text(
                      item.sale.toGil(),
                      style: SubHeading,
                    ),
                  ],
                ),
                Text(buildTitle(), style: SubHeading),
              ],
            ),
            SizedBox(height: 8),
            Text('Bought at ${formatDate(item.sellDate)}'),
            SizedBox(height: 8),
            Row(
              children: [
                Text('${item.sellerName} > ${item.buyerName}'),
              ],
            )
          ],
        ),
      ),
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
