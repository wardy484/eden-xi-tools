import 'package:eden_xi_tools/item_show/widgets/item_bazaar_card.dart';
import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:flutter/material.dart';

class ItemBazaarTab extends StatefulWidget {
  final List<BazaarItem> items;
  final Future<void> Function() onRefresh;

  const ItemBazaarTab({
    Key? key,
    required this.items,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ItemBazaarTabState createState() => _ItemBazaarTabState();
}

class _ItemBazaarTabState extends State<ItemBazaarTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.items.isEmpty) {
      child = Text("No bazaar history...");
    } else {
      child = ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemBazaarCard(
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
