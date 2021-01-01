import 'dart:async';

import 'package:eden_xi_tools/eden/player/entities/player_search_results.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:eden_xi_tools/favourites/entities/item_favourites.dart';
import 'package:eden_xi_tools/favourites/entities/player_favourites.dart';
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
          players: PlayerFavourites(
            favourites: [event.player],
          ),
        );
      }

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        currentState.players.addPlayer(event.player);

        yield currentState.copyWith(players: currentState.players);
      }
    }

    if (event is FavouritesPlayerRemoved) {
      final currentState = state;

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        yield currentState.copyWith(
          players: PlayerFavourites(
            favourites: currentState.players.withoutPlayer(event.player),
          ),
        );
      }
    }

    if (event is FavouritesItemSaved) {
      final currentState = state;

      if (currentState is FavouritesInitial) {
        yield FavouritesLoading();

        yield FavouritesLoaded(
          items: ItemFavourites(favourites: [
            event.item,
          ]),
        );
      }

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        var items = currentState.items?.all() ?? [];
        items.add(event.item);

        yield currentState.copyWith(items: ItemFavourites(favourites: items));
      }
    }

    if (event is FavouritesItemRemoved) {
      final currentState = state;

      if (currentState is FavouritesLoaded) {
        yield FavouritesLoading();

        var favourites = currentState.items.withoutItem(event.item);

        yield currentState.copyWith(
          items: ItemFavourites(favourites: favourites),
        );
      }
    }
  }

  @override
  FavouritesState fromJson(Map<String, dynamic> json) {
    try {
      final favourites = PlayerFavourites.fromJson(json);

      return FavouritesLoaded(players: favourites);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(FavouritesState state) {
    if (state is FavouritesLoaded) {
      return state.players.toJson();
    }

    return null;
  }
}
