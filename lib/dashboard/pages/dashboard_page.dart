import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_items_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_players_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_server_status.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_tab.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_tab.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/SwipableScaffold.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SwipableScaffold(
      resetOnPop: true,
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
      pages: [
        ListView(
          children: [
            DashboardServerStatus(),
            DashboardFavouriteItemsCard(),
            DashboardFavouritePlayersCard(),
          ],
        ),
        ItemSearchTab(),
        PlayerSearchTab(),
      ],
      tabs: const <BottomNavigationBarItem>[
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
    );
  }
}
