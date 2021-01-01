import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/item_search/pages/item_search_page.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_page.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:eden_xi_tools/user_settings/user_settings_bloc.dart';
import 'package:eden_xi_tools/user_settings/user_settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPageHydrated extends StatelessWidget {
  const DashboardPageHydrated({Key key}) : super(key: key);

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
      body: BlocBuilder<FavouritesBloc, FavouritesState>(
        builder: (context, state) {
          if (state is FavouritesLoaded && state.favourites.hasFavourites) {
            return ListView.builder(
              itemCount: state.favourites.favourites.length,
              itemBuilder: (context, index) {
                return PlayerSearchResultCard(
                    item: state.favourites.favourites[index]);
              },
            );
          }

          return Padding(
            padding: BoxPadding,
            child: Text(
              "Tap the star on player profiles to have them appear on your dashboard.",
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
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
                    style: LightHeading,
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
