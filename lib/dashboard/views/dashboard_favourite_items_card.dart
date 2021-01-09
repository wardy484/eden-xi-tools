import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_empty_card.dart';
import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_loaded_card.dart';
import 'package:eden_xi_tools/dashboard/views/cards/dashboard_favourites_loading_card.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/favourites/views/favourites_page.dart';
import 'package:eden_xi_tools/item_show/views/item_search_result_card.dart';
import 'package:eden_xi_tools/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardFavouriteItemsCard extends StatelessWidget {
  final FavouritePageTabs destination = FavouritePageTabs.items;
  final String title = "Favourite items";
  final String emptyText =
      "It looks like you have no favourite items yet. Click the star on an item profile to favourite it.";

  const DashboardFavouriteItemsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc<SearchResultItem>, FavouritesState>(
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
              return DashboardFavouritesLoadedCard<SearchResultItem>(
                favourites: favourites,
                title: title,
                destinationTab: destination,
                maxItems: state.settings.maxItemsOnDashboard,
                cardBuilder: (item) => ItemSearchCard(item: item),
              );
            },
          ),
        );
      },
    );
  }
}
