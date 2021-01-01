import 'package:eden_xi_tools/eden/items/entities/auction_house_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:eden_xi_tools/extensions/int.dart';

class ItemAuctionHouseCard extends StatelessWidget {
  final AuctionHouseItem item;

  const ItemAuctionHouseCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: BoxPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    DateFormat formatter = DateFormat.yMd().add_Hm();

    return formatter.format(date);
  }
}
