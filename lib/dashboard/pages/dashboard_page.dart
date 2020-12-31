import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_page.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_page.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/user_settings/user_settings_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

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
      body: BlocBuilder<UserSettingsBloc, UserSettingsState>(
        builder: (context, state) {
          if (state is UserSettingsFetched && state.favourites.length > 0) {
            return ListView.builder(
              itemCount: state.favourites.length,
              itemBuilder: (context, index) {
                Player player = state.favourites[index];

                return PlayerSearchResultCard(
                  item: PlayerSearchResultItem(
                    avatar: player.avatar,
                    charname: player.name,
                    jobString: player.jobString,
                    title: player.title,
                  ),
                );
              },
            );
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Tap the star on player profiles to have them appear on your dashboard.",
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Image.asset(
                    "icon.png",
                    width: 94,
                    height: 94,
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Eden XI Tools',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item Search'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemSearchPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Player Search'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerSearchPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
