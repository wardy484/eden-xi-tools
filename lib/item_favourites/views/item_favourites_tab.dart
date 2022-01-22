import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/item_favourites/bloc/item_favourites_bloc.dart';
import 'package:eden_xi_tools/item_show/views/item_search_result_card.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFavouritesTab extends StatelessWidget {
  const ItemFavouritesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _favouritesBloc = BlocProvider.of<ItemFavouritesBloc>(context);

    return BlocBuilder<ItemFavouritesBloc, ItemFavouritesState>(
      builder: (context, state) {
        if (state is ItemFavouritesLoaded && !state.favourites.isEmpty) {
          return ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              _favouritesBloc.add(ItemFavouritesReordered(oldIndex, newIndex));
            },
            children: _mapItems(state.favourites.all()),
          );
        }

        return CenteredMessage(
          "Tap the star on item profiles to have them appear on your dashboard.",
        );
      },
    );
  }

  List<Widget> _mapItems(List<SearchResultItem> items) {
    return [
      ...items.map(
        (e) => _ItemFavouriteCard(key: UniqueKey(), item: e),
      ),
    ];
  }
}

class _ItemFavouriteCard extends StatelessWidget {
  final SearchResultItem item;

  const _ItemFavouriteCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ItemSearchCard(item: item),
        Divider(),
      ],
    );
  }
}
