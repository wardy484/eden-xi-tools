import 'package:flutter/material.dart';
import 'package:getmyshittogether/item_show/views/tabs/item_show_bottom_bar_items.dart';

class ItemShowNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;

  const ItemShowNavigationBar({
    Key key,
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: BottomBarListItems,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: onTap,
    );
  }
}
