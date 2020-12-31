import 'package:eden_xi_tools/player_show/views/tabs/player_show_bottom_bar_items.dart';
import 'package:flutter/material.dart';

class PlayerShowNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;

  const PlayerShowNavigationBar({
    Key key,
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: PlayerShowBottomBarListItems,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: onTap,
    );
  }
}
