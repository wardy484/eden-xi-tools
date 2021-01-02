part of 'item_favourites_bloc.dart';

abstract class ItemFavouritesState extends Equatable {
  const ItemFavouritesState();

  @override
  List<Object> get props => [];
}

class ItemFavouritesInitial extends ItemFavouritesState {}

class ItemFavouritesLoading extends ItemFavouritesState {}

class ItemFavouritesLoaded extends ItemFavouritesState {
  final ItemFavourites favourites;

  const ItemFavouritesLoaded({this.favourites});

  ItemFavouritesLoaded copyWith({ItemFavourites favourites}) {
    return ItemFavouritesLoaded(
      favourites: favourites ?? this.favourites,
    );
  }

  @override
  List<Object> get props => [
        favourites,
      ];
}
