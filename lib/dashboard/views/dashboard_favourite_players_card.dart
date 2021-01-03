import 'package:eden_xi_tools/dashboard/pages/favourites_page.dart';
import 'package:eden_xi_tools/dashboard/views/dashboard_favourites_card.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/widgets/centered_loader.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardFavouritePlayersCard extends StatelessWidget {
  const DashboardFavouritePlayersCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerFavouritesBloc, PlayerFavouritesState>(
      builder: (context, state) {
        if (state is PlayerFavouritesInitial) {
          return DashboardFavouritesCard(
            title: "Favourite players",
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "It looks like you have no favourite players yet. Click the star on a players profile to favourite them.",
                      softWrap: true,
                    ),
                  ),
                ],
              )
            ],
            onViewMoreTapped: () => _openFavouritesPage(context),
          );
        }

        if (state is PlayerFavouritesLoading) {
          return DashboardFavouritesCard(
            title: "Favourite items",
            children: [
              CenteredLoader(),
            ],
            onViewMoreTapped: () => _openFavouritesPage(context),
          );
        }

        if (state is PlayerFavouritesLoaded) {
          print(state.favourites);
          return DashboardFavouritesCard(
            title: "Favourite players",
            children: [
              if (state.favourites.isEmpty)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "It looks like you have no favourite players yet. Click the star on a players profile to favourite them.",
                        softWrap: true,
                      ),
                    ),
                  ],
                )
              else
                ...state.favourites.top(3).map((item) {
                  return PlayerSearchResultCard(item: item);
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
          initialPageIndex: 1,
        ),
      ),
    );
  }
}
