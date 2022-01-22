import 'package:eden_xi_tools/eden/items/entities/owner/ownable_items.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:flutter/material.dart';

class ItemShowNavigationBar extends StatelessWidget {
  final int currentIndex;
  final SearchResultItem item;
  final Function(int index) onTap;

  const ItemShowNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        if (OwnableItems.contains(item.id))
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Owners',
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Auction House',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: 'Bazaar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handyman),
          label: 'Crafts',
        ),
      ],
    );
  }
}
