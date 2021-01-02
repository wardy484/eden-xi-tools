part of 'player_favourites_bloc.dart';

abstract class PlayerFavouritesEvent extends Equatable {
  const PlayerFavouritesEvent();

  @override
  List<Object> get props => [];
}

class PlayerFavouritesSaved extends PlayerFavouritesEvent {
  final PlayerSearchResultItem player;

  const PlayerFavouritesSaved({this.player});

  @override
  List<Object> get props => [player];
}

class PlayerFavouritesRemoved extends PlayerFavouritesEvent {
  final PlayerSearchResultItem player;

  const PlayerFavouritesRemoved({this.player});

  @override
  List<Object> get props => [player];
}
