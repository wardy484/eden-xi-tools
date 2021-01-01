part of 'favourites_bloc.dart';

abstract class FavouritesEvent extends Equatable {
  const FavouritesEvent();

  @override
  List<Object> get props => [];
}

class FavouritesPlayerSaved extends FavouritesEvent {
  final PlayerSearchResultItem player;

  const FavouritesPlayerSaved({this.player});

  @override
  List<Object> get props => [player];
}

class FavouritesPlayerRemoved extends FavouritesEvent {
  final PlayerSearchResultItem player;

  const FavouritesPlayerRemoved({this.player});

  @override
  List<Object> get props => [player];
}

class FavouritesItemSaved extends FavouritesEvent {
  final SearchResultItem item;

  const FavouritesItemSaved({this.item});

  @override
  List<Object> get props => [item];
}

class FavouritesItemRemoved extends FavouritesEvent {
  final SearchResultItem item;

  const FavouritesItemRemoved({this.item});

  @override
  List<Object> get props => [item];
}
