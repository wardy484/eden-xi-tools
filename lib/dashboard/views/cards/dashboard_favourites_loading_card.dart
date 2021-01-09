import 'package:eden_xi_tools/favourites/views/favourites_page.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourites_card.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:flutter/material.dart';

class DashboardFavouritesLoadingCard extends StatelessWidget {
  final String title;
  final FavouritePageTabs destinationTab;

  const DashboardFavouritesLoadingCard({
    Key key,
    @required this.title,
    @required this.destinationTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardFavouritesCard(
      title: title,
      children: [
        CenteredLoader(),
      ],
      onViewMoreTapped: () => _openFavouritesPage(context),
    );
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
