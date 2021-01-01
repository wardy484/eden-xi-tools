import 'package:eden_xi_tools/eden/items/entities/auction_house_item.dart';
import 'package:eden_xi_tools/item_auction_house/views/item_auction_house_card.dart';
import 'package:flutter/material.dart';

class ItemAuctionHouseList extends StatelessWidget {
  final Function onRefresh;
  final List<AuctionHouseItem> items;

  const ItemAuctionHouseList({
    Key key,
    this.onRefresh,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemAuctionHouseCard(
            item: items[index],
          );
        },
      ),
    );
  }
}
