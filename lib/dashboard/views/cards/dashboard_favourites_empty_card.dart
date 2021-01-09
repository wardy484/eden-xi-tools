import 'package:eden_xi_tools/favourites/views/favourites_page.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourites_card.dart';
import 'package:flutter/material.dart';

class DashboardFavouritesEmptyCard extends StatelessWidget {
  final String title;
  final FavouritePageTabs destinationTab;
  final String body;

  const DashboardFavouritesEmptyCard({
    Key key,
    @required this.title,
    @required this.destinationTab,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardFavouritesCard(
      title: title,
      children: [_buildRow()],
      onViewMoreTapped: () => _openFavouritesPage(context),
    );
  }

  _openFavouritesPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavouritesPage(initialPageIndex: destinationTab),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(body, softWrap: true),
          ),
        ),
      ],
    );
  }
}
