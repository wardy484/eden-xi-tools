import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/widgets/favourite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFavouriteButton extends StatelessWidget {
  final SearchResultItem item;

  const ItemFavouriteButton({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final favouritesBloc = BlocProvider.of<FavouritesBloc>(context);

    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        bool value = false;

        if (state is FavouritesLoaded) {
          value = state.items?.contains(item) ?? false;
        }

        return FavouriteButton(
          value: value,
          onPressed: (bool favourited) {
            if (favourited) {
              favouritesBloc.add(FavouritesItemSaved(item: item));
            } else {
              favouritesBloc.add(FavouritesItemRemoved(item: item));
            }
          },
        );
      },
    );
  }
}
