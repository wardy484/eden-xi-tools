import 'dart:async';

import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/item_favourites/entities/item_favourites.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'item_favourites_event.dart';
part 'item_favourites_state.dart';

class ItemFavouritesBloc
    extends HydratedBloc<ItemFavouritesEvent, ItemFavouritesState> {
  ItemFavouritesBloc() : super(ItemFavouritesInitial());

  @override
  Stream<ItemFavouritesState> mapEventToState(
    ItemFavouritesEvent event,
  ) async* {
    try {
      final currentState = state;

      if (event is ItemFavouritesSaved) {
        if (currentState is ItemFavouritesInitial) {
          yield ItemFavouritesLoading();

          yield ItemFavouritesLoaded(
            favourites: ItemFavourites(
              favourites: [event.item],
            ),
          );
        }

        if (currentState is ItemFavouritesLoaded) {
          yield ItemFavouritesLoading();

          currentState.favourites.add(event.item);

          yield currentState.copyWith(
            favourites: currentState.favourites,
          );
        }
      }

      if (event is ItemFavouritesRemoved) {
        if (currentState is ItemFavouritesLoaded) {
          yield ItemFavouritesLoading();

          yield currentState.copyWith(
            favourites: ItemFavourites(
              favourites: currentState.favourites.without(event.item),
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
  ItemFavouritesState fromJson(Map<String, dynamic> json) {
    try {
      if (json != null) {
        return ItemFavouritesLoaded(
          favourites: ItemFavourites.fromJson(json),
        );
      }

      return ItemFavouritesInitial();
    } catch (_) {
      return ItemFavouritesInitial();
    }
  }

  @override
  Map<String, dynamic> toJson(ItemFavouritesState state) {
    if (state is ItemFavouritesLoaded) {
      return state.favourites.toJson();
    }

    return null;
  }
}
