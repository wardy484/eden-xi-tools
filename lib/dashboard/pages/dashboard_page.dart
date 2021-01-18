import 'dart:async';

import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_items_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourite_players_card.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_server_status.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_tab.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_tab.dart';
import 'package:eden_xi_tools/server_status/bloc/server_status_bloc.dart';
import 'package:eden_xi_tools/settings/pages/settings_page.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/SwipableScaffold.dart';
import 'package:eden_xi_tools/yells/views/yells_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Completer<void> _refreshCompleter;
  ServerStatusBloc _serverStatusBloc;

  @override
  void initState() {
    _refreshCompleter = Completer<void>();
    _serverStatusBloc = BlocProvider.of<ServerStatusBloc>(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ServerStatusBloc, ServerStatusState>(
      listener: (context, state) {
        state.maybeWhen(
          offline: () {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          },
          online: (players) {
            _refreshCompleter?.complete();
            _refreshCompleter = Completer();
          },
          orElse: () => {},
        );
      },
      child: SwipableScaffold(
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
              _serverStatusBloc.add(ServerStatusEvent.fetched());
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
      ),
    );
  }
}
