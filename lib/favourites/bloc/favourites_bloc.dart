import 'dart:async';

import 'package:eden_xi_tools/eden/items/entities/search_result_item/search_result_item.dart';
import 'package:eden_xi_tools/eden/player/entities/player_search_result/player_search_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc<T> extends HydratedBloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(_Initial<T>());

  @override
  Stream<FavouritesState> mapEventToState(
    FavouritesEvent event,
  ) async* {
    yield event.when(
      started: null,
      saved: (favourites) {},
      removed: (favourites) {},
      sorted: (oldIndex, newIndex) {},
    );
  }

  @override
  FavouritesState fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return FavouritesState<T>.initial();
    }

    var data = json as List;
    var items = data.map((item) {
      if (T is PlayerSearchResult) {
        return PlayerSearchResult.fromJson(item);
      }

      if (T is SearchResultItem) {
        return SearchResultItem.fromJson(item);
      }

      return null;
    });

    return FavouritesState<T>.loaded(items);
  }

  @override
  Map<String, dynamic> toJson(FavouritesState state) {
    return state.when(
      initial: null,
      loading: null,
      loaded: (state) {
        return state.favourites.map((e) => e.toJson());
      },
    );
  }
}
