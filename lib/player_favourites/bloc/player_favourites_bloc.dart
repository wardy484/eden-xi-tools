import 'dart:async';

import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:eden_xi_tools/player_favourites/entities/player_favourites.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'player_favourites_event.dart';
part 'player_favourites_state.dart';

class PlayerFavouritesBloc
    extends HydratedBloc<PlayerFavouritesEvent, PlayerFavouritesState> {
  PlayerFavouritesBloc() : super(PlayerFavouritesInitial());

  @override
  Stream<PlayerFavouritesState> mapEventToState(
    PlayerFavouritesEvent event,
  ) async* {
    try {
      final currentState = state;

      if (event is PlayerFavouritesSaved) {
        if (currentState is PlayerFavouritesInitial) {
          yield PlayerFavouritesLoading();

          yield PlayerFavouritesLoaded(
            favourites: PlayerFavourites(
              favourites: [event.player],
            ),
          );
        }

        if (currentState is PlayerFavouritesLoaded) {
          yield PlayerFavouritesLoading();

          currentState.favourites.add(event.player);

          yield currentState.copyWith(
            favourites: currentState.favourites,
          );
        }
      }

      if (event is PlayerFavouritesRemoved) {
        if (currentState is PlayerFavouritesLoaded) {
          yield PlayerFavouritesLoading();

          yield currentState.copyWith(
            favourites: PlayerFavourites(
              favourites: currentState.favourites.without(event.player),
            ),
          );
        }
      }
    } catch (_) {
      // Explicitly yield existing state
      yield state;
    }
  }

  @override
  PlayerFavouritesState fromJson(Map<String, dynamic> json) {
    try {
      if (json != null) {
        return PlayerFavouritesLoaded(
          favourites: PlayerFavourites.fromJson(json),
        );
      }

      return PlayerFavouritesInitial();
    } catch (_) {
      return PlayerFavouritesInitial();
    }
  }

  @override
  Map<String, dynamic> toJson(PlayerFavouritesState state) {
    if (state is PlayerFavouritesLoaded) {
      return state.favourites.toJson();
    }

    return null;
  }
}
