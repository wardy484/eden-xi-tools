import 'package:eden_xi_tools/dashboard/server_status_controller.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_items_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_players_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_server_status.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_tab.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_tab.dart';
import 'package:eden_xi_tools/settings/pages/settings_page.dart';
import 'package:eden_xi_tools/yells/views/yells_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final pageController = usePageController(initialPage: 0);

    return Scaffold(
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
          TextButton(
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
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => pageIndex.value = value,
        children: [
          RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(serverStatusControllerProvider);

              return ref.read(serverStatusControllerProvider.future);
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex.value,
        onTap: (value) {
          pageIndex.value = value;
          pageController.jumpToPage(value);
        },
        items: [
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
      ),
    );
  }
}
