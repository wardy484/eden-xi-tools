import 'dart:async';

import 'package:eden_xi_tools/favourites/entity/favouriteslist.dart';
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
    // TODO: implement mapEventToState
  }

  @override
  FavouritesState fromJson(Map<String, dynamic> json) {}

  @override
  Map<String, dynamic> toJson(FavouritesState state) {
    // if (state is ItemFavouritesLoaded) {
    //   return state.favourites.toJson();
    // }

    // return null;
  }
}
