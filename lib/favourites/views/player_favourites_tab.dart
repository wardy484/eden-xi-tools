import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/player_search/views/player_search_result_card.dart';
import 'package:eden_xi_tools/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerFavouritesTab extends StatelessWidget {
  const PlayerFavouritesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        if (state is FavouritesLoaded && state.players.hasFavourites) {
          return ListView.builder(
            itemCount: state.players.favourites.length,
            itemBuilder: (context, index) {
              return PlayerSearchResultCard(
                  item: state.players.favourites[index]);
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
