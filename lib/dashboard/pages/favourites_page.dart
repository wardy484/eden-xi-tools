import 'package:eden_xi_tools/item_favourites/views/item_favourites_tab.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourites_tab.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/SwipableScaffold.dart';
import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  final int initialPageIndex;

  const FavouritesPage({
    Key key,
    this.initialPageIndex = 0,
  }) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return SwipableScaffold(
      initialPage: widget.initialPageIndex,
      appBar: AppBar(
        title: Text("Favourites"),
      ),
      pages: [
        PlayerFavouritesTab(),
        ItemFavouritesTab(),
      ],
      tabs: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Favourite players',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cake),
          label: 'Favourite items',
        ),
      ],
    );
  }
}
