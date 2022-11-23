import 'package:eden_xi_tools/item_show/widgets/item_auction_house_card.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemAuctionHouseTab extends StatefulWidget {
  final List<AuctionHouseItem> items;
  final Future<void> Function() onRefresh;

  const ItemAuctionHouseTab({
    Key? key,
    required this.items,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ItemAuctionHouseTabState createState() => _ItemAuctionHouseTabState();
}

class _ItemAuctionHouseTabState extends State<ItemAuctionHouseTab> {
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.items.length < 1) {
      child = CenteredMessage("No auction house history.");
    } else {
      child = ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemAuctionHouseCard(
            item: widget.items[index],
          );
        },
      );
    }

    return RefreshIndicator(
      child: child,
      onRefresh: widget.onRefresh,
    );
  }
}
