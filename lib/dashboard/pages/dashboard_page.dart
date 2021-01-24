import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_items_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_players_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_server_status.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_tab.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_tab.dart';
import 'package:eden_xi_tools/server_status/server_status_notifier.dart';
import 'package:eden_xi_tools/settings/pages/settings_page.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/SwipableScaffold.dart';
import 'package:eden_xi_tools/yells/views/yells_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration.zero,
      () => context.read(serverStatusProvider).fetch(),
    );

    var status = useProvider(serverStatusProvider);

    return SwipableScaffold(
      resetOnPop: true,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "icon_simple.png",
              color: Colors.white,
              width: 35,
              height: 35,
            ),
            SizedBox(width: 14),
            Text("Eden XI Tools"),
          ],
        ),
        actions: [
          FlatButton(
            minWidth: 60,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      pages: [
        RefreshIndicator(
          onRefresh: () async {
            status.fetch();
          },
          child: ListView(
            children: [
              SizedBox(height: 8),
              DashboardServerStatus(),
              DashboardFavouritePlayersCard(),
              DashboardFavouriteItemsCard(),
              SizedBox(height: 16),
            ],
          ),
        ),
        ItemSearchTab(),
        PlayerSearchTab(),
        YellsTab(),
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
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'Yells',
        ),
      ],
    );
  }
}
