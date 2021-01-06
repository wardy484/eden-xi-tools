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

class ItemFavouritesReordered extends ItemFavouritesEvent {
  final int oldIndex;
  final int newIndex;

  const ItemFavouritesReordered(this.oldIndex, this.newIndex);

  @override
  List<Object> get props => [oldIndex, newIndex];
}
