import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_empty_card.dart';
import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_loaded_card.dart';
import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_loading_card.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/favourites/views/favourites_page.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardFavouritePlayersCard extends StatelessWidget {
  final FavouritePageTabs destination = FavouritePageTabs.players;
  final String title = "Favourite players";
  final String emptyText =
      "It looks like you have no favourite players yet. Click the star on a players profile to favourite them.";

  const DashboardFavouritePlayersCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc<PlayerSearchResultItem>, FavouritesState>(
      builder: (context, state) {
        return state.when(
          initial: () => DashboardFavouritesEmptyCard(
            title: title,
            destinationTab: destination,
            body: emptyText,
          ),
          loading: () => DashboardFavouritesLoadingCard(
            title: title,
            destinationTab: destination,
          ),
          loaded: (favourites) => BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return DashboardFavouritesLoadedCard<PlayerSearchResultItem>(
                favourites: favourites,
                title: title,
                destinationTab: destination,
                maxItems: state.settings.maxPlayersOnDashboard,
                cardBuilder: (item) => PlayerSearchResultCard(item: item),
              );
            },
          ),
        );
      },
    );
  }
}
