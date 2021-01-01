import 'package:flutter/material.dart';

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
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Auction House',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: 'Bazaar',
        ),
      ],
    );
  }
}
