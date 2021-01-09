import 'dart:async';

import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc<T> extends HydratedBloc<FavouritesEvent, FavouritesState> {
  FavouritesState<T> currentState;

  FavouritesBloc() : super(_Initial<T>());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    currentState = state;

    yield FavouritesState.loading();

    yield event.when(
      started: () => FavouritesState.initial(),
      saved: _handleSaved,
      removed: _handleRemoved,
      sorted: _handleSorted,
    );
  }

  FavouritesState<T> _handleSorted(int oldIndex, int newIndex) {
    return currentState.maybeWhen(
      loaded: (favourites) {
        if (newIndex > oldIndex) {
          newIndex = newIndex - 1;
        }

        var item = favourites.removeAt(oldIndex);
        favourites.insert(newIndex, item);

        return FavouritesState.loaded(favourites);
      },
      orElse: () => FavouritesState.initial(),
    );
  }

  FavouritesState<T> _handleRemoved(item) {
    return currentState.maybeWhen(
      loaded: (favourites) {
        favourites.remove(item);

        return favourites.length < 1
            ? FavouritesState.initial()
            : FavouritesState.loaded(favourites);
      },
      orElse: () => FavouritesState.initial(),
    );
  }

  FavouritesState<T> _handleSaved(item) {
    return currentState.when<FavouritesState<T>>(
      loading: () => FavouritesState.initial(),
      initial: () {
        return FavouritesState.loaded([item]);
      },
      loaded: (favourites) {
        favourites.add(item);

        return FavouritesState.loaded(favourites);
      },
    );
  }

  @override
  FavouritesState fromJson(Map<String, dynamic> json) {
    // TODO FIX THIS SHIT
    return FavouritesState<T>.initial();

    if (json == null) {
      return FavouritesState<T>.initial();
    }

    var data = json['favourites'] as List;
    var items = data.map<T>((item) {
      if (T == PlayerSearchResultItem) {
        return PlayerSearchResultItem.fromJson(item) as T;
      }

      if (T is SearchResultItem) {
        return SearchResultItem.fromJson(item) as T;
      }

      return null;
    }).toList();

    return FavouritesState<T>.loaded(items);
  }

  @override
  Map<String, dynamic> toJson(FavouritesState state) {
    return state.when(
      initial: () => null,
      loading: () => null,
      loaded: (favourites) {
        List<T> faves = favourites;

        return {
          "favourites": faves.map((e) {
            if (e is PlayerSearchResultItem) {
              return e.toJson();
            }

            if (e is SearchResultItem) {
              return e.toJson();
            }

            return null;
          }).toList()
        };
      },
    );
  }
}
