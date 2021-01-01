import 'dart:async';

import 'package:eden_xi_tools/eden/player/entities/player.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends HydratedBloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(FavouritesInitial());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    if (event is FavouritesPlayerSaved) {
      final currentState = state;

      if (currentState is FavouritesInitial) {
        yield FavouritesLoading();

        yield FavouritesLoaded(
          favourites: PlayerFavourites(
            favourites: [
              event.player.toSearchResultItem(),
            ],
          ),
        );
      }

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        currentState.favourites.favourites.add(
          event.player.toSearchResultItem(),
        );

        yield FavouritesLoaded(favourites: currentState.favourites);
      }
    }

    if (event is FavouritesPlayerRemoved) {
      final currentState = state;

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        var favourites = currentState.favourites.favourites
            .where((element) => element.charname != event.player.name)
            .toList();

        yield FavouritesLoaded(
          favourites: PlayerFavourites(favourites: favourites),
        );
      }
    }
  }

  @override
  FavouritesState fromJson(Map<String, dynamic> json) {
    try {
      final favourites = PlayerFavourites.fromJson(json);

      return FavouritesLoaded(favourites: favourites);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(FavouritesState state) {
    if (state is FavouritesLoaded) {
      return state.favourites.toJson();
    }

    return null;
  }
}
