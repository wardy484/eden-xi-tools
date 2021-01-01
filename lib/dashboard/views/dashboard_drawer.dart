import 'package:eden_xi_tools/item_search/pages/item_search_page.dart';
import 'package:eden_xi_tools/player_search/pages/player_search_page.dart';
import 'package:eden_xi_tools/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
