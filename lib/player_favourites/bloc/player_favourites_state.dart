part of 'player_favourites_bloc.dart';

abstract class PlayerFavouritesState extends Equatable {
  const PlayerFavouritesState();

  @override
  List<Object> get props => [];
}

class PlayerFavouritesInitial extends PlayerFavouritesState {}

class PlayerFavouritesLoading extends PlayerFavouritesState {}

class PlayerFavouritesLoaded extends PlayerFavouritesState {
  final PlayerFavourites favourites;

  const PlayerFavouritesLoaded({this.favourites});

  PlayerFavouritesLoaded copyWith({PlayerFavourites favourites}) {
    return PlayerFavouritesLoaded(
      favourites: favourites ?? this.favourites,
    );
  }

  @override
  List<Object> get props => [
        favourites,
      ];
}
