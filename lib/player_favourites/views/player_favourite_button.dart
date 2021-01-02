import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/widgets/favourite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_xi_tools/player_favourites/bloc/player_favourites_bloc.dart';

class PlayerFavouriteButton extends StatelessWidget {
  final PlayerSearchResultItem player;

  const PlayerFavouriteButton({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final favouritesBloc = BlocProvider.of<PlayerFavouritesBloc>(context);

    return BlocBuilder<PlayerFavouritesBloc, PlayerFavouritesState>(
      builder: (context, state) {
        bool value = false;

        if (state is PlayerFavouritesLoaded) {
          value = state.favourites.contains(player.charname);
        }

        return FavouriteButton(
          value: value,
          onPressed: (bool favourited) {
            if (favourited) {
              favouritesBloc.add(PlayerFavouritesSaved(player: player));
            } else {
              favouritesBloc.add(PlayerFavouritesRemoved(player: player));
            }
          },
        );
      },
    );
  }
}
