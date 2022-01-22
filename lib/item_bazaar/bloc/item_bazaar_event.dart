part of 'item_bazaar_bloc.dart';

abstract class ItemBazaarEvent extends Equatable {
  const ItemBazaarEvent();

  @override
  List<Object> get props => [];
}

class ItemBazaarRequested extends ItemBazaarEvent {
  final String itemKey;
  final bool stacked;

  const ItemBazaarRequested({
    required this.itemKey,
    required this.stacked,
  });

  @override
  List<Object> get props => [itemKey];
}

class ItemBazaarRefreshed extends ItemBazaarEvent {}

class ItemBazaarCleared extends ItemBazaarEvent {}
