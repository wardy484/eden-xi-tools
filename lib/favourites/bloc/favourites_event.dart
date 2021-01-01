part of 'favourites_bloc.dart';

abstract class FavouritesEvent extends Equatable {
  const FavouritesEvent();

  @override
  List<Object> get props => [];
}

class FavouritesPlayerSaved extends FavouritesEvent {
  final Player player;

  const FavouritesPlayerSaved({this.player});

  @override
  List<Object> get props => [player];
}

class FavouritesPlayerRemoved extends FavouritesEvent {
  final Player player;

  const FavouritesPlayerRemoved({this.player});

  @override
  List<Object> get props => [player];
}
