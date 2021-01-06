import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/widgets/centered_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerFavouritesTab extends StatelessWidget {
  const PlayerFavouritesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _favouritesBloc = BlocProvider.of<PlayerFavouritesBloc>(context);

    return BlocBuilder<PlayerFavouritesBloc, PlayerFavouritesState>(
      builder: (context, state) {
        if (state is PlayerFavouritesLoaded && !state.favourites.isEmpty) {
          return ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              _favouritesBloc
                  .add(PlayerFavouritesReordered(oldIndex, newIndex));
            },
            children: _mapItems(state.favourites.all()),
          );
        }

        return CenteredMessage(
          "Tap the star on player profiles to have them appear on your dashboard.",
        );
      },
    );
  }

  List<Widget> _mapItems(List<PlayerSearchResultItem> items) {
    return [
      ...items.map(
        (e) => _PlayerFavouritesCard(key: UniqueKey(), item: e),
      ),
    ];
  }
}

class _PlayerFavouritesCard extends StatelessWidget {
  final PlayerSearchResultItem item;

  const _PlayerFavouritesCard({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PlayerSearchResultCard(item: item),
        Divider(),
      ],
    );
  }
}
