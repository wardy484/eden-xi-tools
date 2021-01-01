part of 'favourites_bloc.dart';

abstract class FavouritesState extends Equatable {
  const FavouritesState();

  @override
  List<Object> get props => [];
}

class FavouritesInitial extends FavouritesState {}

class FavouritesLoading extends FavouritesState {}

class FavouritesLoaded extends FavouritesState {
  final PlayerFavourites favourites;

  const FavouritesLoaded({this.favourites});

  @override
  List<Object> get props => [
        favourites,
      ];
}
