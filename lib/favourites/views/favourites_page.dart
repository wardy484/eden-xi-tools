import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/favourites/views/favourites_tab.dart';
import 'package:eden_xi_tools/favourites/views/item_favourite_card.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
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
        FavouritesTab<SearchResultItem>(
          cardBuilder: _buildItemCard,
          emptyLabel:
              "Tap the star on an items profile to have it appear in your favourites.",
        ),
        FavouritesTab<PlayerSearchResultItem>(
          cardBuilder: _buildPlayerCard,
          emptyLabel:
              "Tap the star on a players profile to have them appear in your favourites.",
        ),
        // PlayerFavouritesTab(),
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

  Widget _buildItemCard(favourite) {
    return ItemFavouriteCard(key: UniqueKey(), item: favourite);
  }

  Widget _buildPlayerCard(favourite) {
    return PlayerSearchResultCard(key: UniqueKey(), item: favourite);
  }
}
