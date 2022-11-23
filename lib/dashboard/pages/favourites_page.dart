import 'package:eden_xi_tools/item_favourites/views/item_favourites_tab.dart';
import 'package:eden_xi_tools/player_favourites/views/player_favourites_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum FavouritePageTabs {
  players,
  items,
}

class FavouritesPage extends HookConsumerWidget {
  final FavouritePageTabs initialPageIndex;

  const FavouritesPage({
    Key? key,
    this.initialPageIndex = FavouritePageTabs.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = useState(0);
    final pageController = usePageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => pageIndex.value = value,
        children: [
          PlayerFavouritesTab(),
          ItemFavouritesTab(),
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
            icon: Icon(Icons.people),
            label: 'Favourite players',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Favourite items',
          ),
        ],
      ),
    );
  }
}
