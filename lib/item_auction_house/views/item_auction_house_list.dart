import 'package:eden_xi_tools/item_auction_house/views/item_auction_house_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemAuctionHouseList extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final List<AuctionHouseItem> items;

  const ItemAuctionHouseList({
    Key? key,
    required this.onRefresh,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
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
