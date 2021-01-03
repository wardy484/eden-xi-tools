import 'package:eden_xi_tools/eden/items/entities/bazaar_item/bazaar_item.dart';
import 'package:eden_xi_tools/item_bazaar/views/item_bazaar_card.dart';
import 'package:flutter/material.dart';

class ItemBazaarList extends StatelessWidget {
  final Function onRefresh;
  final List<BazaarItem> items;

  const ItemBazaarList({
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
          return ItemBazaarCard(
            item: items[index],
          );
        },
      ),
    );
  }
}
