import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/favourites/bloc/favourites_bloc.dart';
import 'package:eden_xi_tools/widgets/favourite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerFavouriteButton extends StatelessWidget {
  final PlayerSearchResultItem player;

  const PlayerFavouriteButton({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final favouritesBloc = BlocProvider.of<FavouritesBloc>(context);

    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        bool value = false;

        if (state is FavouritesLoaded) {
          value = state.players?.containsPlayer(player.charname) ?? false;
        }

        return FavouriteButton(
          value: value,
          onPressed: (bool favourited) {
            if (favourited) {
              favouritesBloc.add(FavouritesPlayerSaved(player: player));
            } else {
              favouritesBloc.add(FavouritesPlayerRemoved(player: player));
            }
          },
        );
      },
    );
  }
}
