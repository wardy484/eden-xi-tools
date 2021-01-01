import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:eden_xi_tools/widgets/item_search/item_search_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFavouritesTab extends StatelessWidget {
  const ItemFavouritesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        if (state is FavouritesLoaded &&
            (state.items?.hasFavourites ?? false)) {
          return ListView.builder(
            itemCount: state.items.favourites.length,
            itemBuilder: (context, index) {
              return ItemSearchResultWidget(
                  item: state.items.favourites[index]);
            },
          );
        }

        return Padding(
          padding: BoxPadding,
          child: Text(
            "Tap the star on items profiles to have them appear on your dashboard.",
          ),
        );
      },
    );
  }
}
