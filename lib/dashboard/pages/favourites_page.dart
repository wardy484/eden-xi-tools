import 'package:eden_xi_tools/item_favourites/views/item_favourites_tab.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourites_tab.dart';
import 'package:eden_xi_tools/widgets/swipable_pages/SwipableScaffold.dart';
import 'package:flutter/material.dart';

enum FavouritePageTabs {
  items,
  players,
}

class FavouritesPage extends StatefulWidget {
  final FavouritePageTabs initialPageIndex;

  const FavouritesPage({
    Key key,
    this.initialPageIndex = FavouritePageTabs.items,
  }) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return SwipableScaffold(
      initialPage: widget.initialPageIndex.index,
      appBar: AppBar(
        title: Text("Favourites"),
      ),
      pages: [
        ItemFavouritesTab(),
        PlayerFavouritesTab(),
      ],
      tabs: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.cake),
          label: 'Favourite items',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Favourite players',
        ),
      ],
    );
  }
}
