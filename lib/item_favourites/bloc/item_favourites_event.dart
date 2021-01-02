part of 'item_favourites_bloc.dart';

abstract class ItemFavouritesEvent extends Equatable {
  const ItemFavouritesEvent();

  @override
  List<Object> get props => [];
}

class ItemFavouritesSaved extends ItemFavouritesEvent {
  final SearchResultItem item;

  const ItemFavouritesSaved({this.item});

  @override
  List<Object> get props => [item];
}

class ItemFavouritesRemoved extends ItemFavouritesEvent {
  final SearchResultItem item;

  const ItemFavouritesRemoved({this.item});

  @override
  List<Object> get props => [item];
}
