import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

class PlayerShowAuctionHouse extends StatelessWidget {
  final List<PlayerAuctionHouseItem> items;

  const PlayerShowAuctionHouse({Key key, this.items}) : super(key: key);

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
        PlayerAuctionHouseItem item = items[index];
        ReCase name = new ReCase(item.name);

        return Card(
          child: Padding(
            padding: EdgeInsets.all(8),
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
                          formatPrice(item.sale),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      name.titleCase,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
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
