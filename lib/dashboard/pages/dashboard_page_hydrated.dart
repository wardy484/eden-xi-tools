import 'package:eden_xi_tools/dashboard/views/dashboard_drawer.dart';
import 'package:eden_xi_tools/item_favourites/views/item_favourites_tab.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourites_tab.dart';
import 'package:flutter/material.dart';

class DashboardPageHydrated extends StatefulWidget {
  const DashboardPageHydrated({Key key}) : super(key: key);

  @override
  _DashboardPageHydratedState createState() => _DashboardPageHydratedState();
}

class _DashboardPageHydratedState extends State<DashboardPageHydrated> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "icon.png",
              width: 35,
              height: 35,
            ),
            SizedBox(width: 14),
            Text("Eden XI Tools"),
          ],
        ),
      ),
      body: [
        PlayerFavouritesTab(),
        ItemFavouritesTab(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Favourite players',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Favourite items',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
      drawer: DashboardDrawer(),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
