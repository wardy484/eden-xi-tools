import 'package:flutter/material.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourites_card.dart';
import 'package:eden_xi_tools/favourites/views/favourites_page.dart';

class DashboardFavouritesLoadedCard<T> extends StatelessWidget {
  final List favourites;
  final String title;
  final FavouritePageTabs destinationTab;
  final int maxItems;
  final Function cardBuilder;

  const DashboardFavouritesLoadedCard({
    Key key,
    @required this.favourites,
    @required this.title,
    @required this.destinationTab,
    @required this.maxItems,
    @required this.cardBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardFavouritesCard(
      title: title,
      children: _getTopItems(favourites)
          .map<Widget>((item) => cardBuilder(item))
          .toList(),
      onViewMoreTapped: () => _openFavouritesPage(context),
    );
  }

  List<T> _getTopItems(List<T> items) {
    return items.sublist(0, items.length > maxItems ? maxItems : items.length);
  }

  _openFavouritesPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavouritesPage(
          initialPageIndex: destinationTab,
        ),
      ),
    );
  }
}
