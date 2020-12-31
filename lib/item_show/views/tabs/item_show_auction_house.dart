import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/eden/items/entities/auction_house_item.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:intl/intl.dart';

class ItemShowAuctionHouse extends StatelessWidget {
  final List<AuctionHouseItem> items;

  const ItemShowAuctionHouse({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.length < 1) {
      return Center(
        child: Text("No auction house history..."),
      );
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        AuctionHouseItem item = items[index];

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
                      formatPrice(item.sale),
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
      },
    );
  }

  String formatDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    DateFormat formatter = DateFormat.yMd().add_Hm();

    return formatter.format(date);
  }

  String formatPrice(int price) {
    NumberFormat formatter = NumberFormat("###,###,###,###g");
    return formatter.format(price);
  }
}
