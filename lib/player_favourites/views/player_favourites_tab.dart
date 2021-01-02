import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerFavouritesTab extends StatelessWidget {
  const PlayerFavouritesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerFavouritesBloc, PlayerFavouritesState>(
      builder: (context, state) {
        if (state is PlayerFavouritesLoaded && !state.favourites.isEmpty) {
          return ListView.builder(
            itemCount: state.favourites.count,
            itemBuilder: (context, index) {
              return PlayerSearchResultCard(
                item: state.favourites.atIndex(index),
              );
            },
          );
        }

        return Padding(
          padding: BoxPadding,
          child: Text(
            "Tap the star on player profiles to have them appear on your dashboard.",
          ),
        );
      },
    );
  }
}
