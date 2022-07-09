import 'package:eden_xi_tools/item_bazaar/views/item_bazaar_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemBazaarList extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final List<BazaarItem> items;

  const ItemBazaarList({
    Key? key,
    required this.onRefresh,
    required this.items,
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
