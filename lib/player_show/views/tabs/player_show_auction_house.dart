import 'package:eden_xi_tools/eden/player/entities/player_auction_house_item/player_auction_house_item.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:eden_xi_tools/widgets/item_icon.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

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
          PlayerAuctionHouseItem item = items[index];
          ReCase name = new ReCase(item.name);

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
                            formatPrice(item.sale),
                            style: SubHeading,
                          ),
                        ],
                      ),
                      Text(
                        name.titleCase,
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
      ),
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
