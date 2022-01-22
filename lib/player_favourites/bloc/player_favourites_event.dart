part of 'player_favourites_bloc.dart';

abstract class PlayerFavouritesEvent extends Equatable {
  const PlayerFavouritesEvent();

  @override
  List<Object> get props => [];
}

class PlayerFavouritesSaved extends PlayerFavouritesEvent {
  final PlayerSearchResultItem player;

  const PlayerFavouritesSaved({required this.player});

  @override
  List<Object> get props => [player];
}

class PlayerFavouritesRemoved extends PlayerFavouritesEvent {
  final PlayerSearchResultItem player;

  const PlayerFavouritesRemoved({required this.player});

  @override
  List<Object> get props => [player];
}

class PlayerFavouritesReordered extends PlayerFavouritesEvent {
  final int oldIndex;
  final int newIndex;

  const PlayerFavouritesReordered(this.oldIndex, this.newIndex);

  @override
  List<Object> get props => [oldIndex, newIndex];
}
