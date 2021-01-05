import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/item_show/views/item_search_result_card.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFavouritesTab extends StatelessWidget {
  const ItemFavouritesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemFavouritesBloc, ItemFavouritesState>(
      builder: (context, state) {
        if (state is ItemFavouritesLoaded && !state.favourites.isEmpty) {
          return ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: state.favourites.count,
            itemBuilder: (context, index) {
              return ItemSearchCard(
                item: state.favourites.atIndex(index),
              );
            },
          );
        }

        return Padding(
          padding: BoxPadding,
          child: Text(
            "Tap the star on item profiles to have them appear on your dashboard.",
          ),
        );
      },
    );
  }
}
