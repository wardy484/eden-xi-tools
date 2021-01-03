import 'package:flutter/material.dart';

class DashboardNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function onTap;

  const DashboardNavigationBar({
    Key key,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gavel_rounded),
          label: 'Item Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Player Search',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.chat_bubble),
        //   label: 'Yells',
        // ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue[800],
      onTap: onTap,
    );
  }
}
