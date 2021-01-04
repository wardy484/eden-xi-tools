import 'package:eden_xi_tools/dashboard/pages/favourites_page.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourites_card.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/views/item_search_result_card.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardFavouriteItemsCard extends StatelessWidget {
  const DashboardFavouriteItemsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemFavouritesBloc, ItemFavouritesState>(
      builder: (context, state) {
        if (state is ItemFavouritesInitial) {
          return DashboardFavouritesCard(
            title: "Favourite items",
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "It looks like you have no favourite items yet. Click the star on an item profile to favourite it.",
                      softWrap: true,
                    ),
                  ),
                ],
              )
            ],
            onViewMoreTapped: () => _openFavouritesPage(context),
          );
        }

        if (state is ItemFavouritesLoading) {
          return DashboardFavouritesCard(
            title: "Favourite items",
            children: [
              CenteredLoader(),
            ],
            onViewMoreTapped: () => _openFavouritesPage(context),
          );
        }

        if (state is ItemFavouritesLoaded) {
          return DashboardFavouritesCard(
            title: "Favourite items",
            children: [
              if (state.favourites.isEmpty)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "It looks like you have no favourite items yet. Click the star on an item profile to favourite it.",
                        softWrap: true,
                      ),
                    ),
                  ],
                )
              else
                ...state.favourites.top(3).map((item) {
                  return ItemSearchCard(item: item);
                }),
            ],
            onViewMoreTapped: () => _openFavouritesPage(context),
          );
        }

        return DashboardFavouritesCard(
          title: "Favourite items",
          children: [
            CenteredMessage(
              message:
                  "An error occurred while loading your favourite items, please try again later.",
            ),
          ],
          onViewMoreTapped: () => _openFavouritesPage(context),
        );
      },
    );
  }

  _openFavouritesPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavouritesPage(
          initialPageIndex: FavouritePageTabs.items,
        ),
      ),
    );
  }
}
