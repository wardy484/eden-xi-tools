part of 'item_bazaar_bloc.dart';

abstract class ItemBazaarState extends Equatable {
  const ItemBazaarState();

  @override
  List<Object> get props => [];
}

class ItemBazaarInitial extends ItemBazaarState {}

class ItemBazaarFailure extends ItemBazaarState {}

class ItemBazaarLoading extends ItemBazaarState {}

class ItemBazaarSuccess extends ItemBazaarState {
  final String key;
  final List<BazaarItem> bazaarItems;

  const ItemBazaarSuccess({
    this.key,
    this.bazaarItems,
  });

  ItemBazaarSuccess copyWith({
    String key,
    List<BazaarItem> bazaarItems,
  }) {
    return ItemBazaarSuccess(
      key: key ?? this.key,
      bazaarItems: bazaarItems ?? this.bazaarItems,
    );
  }

  @override
  List<Object> get props => [key, bazaarItems];

  @override
  String toString() {
    return "Item bazaar Success: { key: $key, bazaarItems: $bazaarItems";
  }
}
