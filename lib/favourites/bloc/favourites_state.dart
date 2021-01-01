part of 'favourites_bloc.dart';

abstract class FavouritesState extends Equatable {
  const FavouritesState();

  @override
  List<Object> get props => [];
}

class FavouritesInitial extends FavouritesState {}

class FavouritesLoading extends FavouritesState {}

class FavouritesLoaded extends FavouritesState {
  final PlayerFavourites players;
  final ItemFavourites items;

  const FavouritesLoaded({this.players, this.items});

  FavouritesLoaded copyWith({
    PlayerFavourites players,
    ItemFavourites items,
  }) {
    return FavouritesLoaded(
      players: players ?? this.players,
      items: items ?? this.items,
    );
  }

  @override
  List<Object> get props => [
        players,
      ];
}
