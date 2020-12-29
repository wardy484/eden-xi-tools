import 'package:equatable/equatable.dart';
import 'package:getmyshittogether/eden/items/entities/auction_house_item.dart';
import 'package:getmyshittogether/eden/items/entities/item.dart';

abstract class ItemShowState extends Equatable {
  final bool showStacked;

  const ItemShowState({this.showStacked = false});

  @override
  List<Object> get props => [];
}

class ItemShowInitial extends ItemShowState {}

class ItemShowFailure extends ItemShowState {}

class ItemShowSuccess extends ItemShowState {
  final String key;
  final Item item;
  final List<AuctionHouseItem> auctionHouseItems;
  final bool showStacked;

  const ItemShowSuccess({
    this.key,
    this.item,
    this.auctionHouseItems,
    this.showStacked,
  });

  ItemShowSuccess copyWith({
    String key,
    Item item,
  }) {
    return ItemShowSuccess(
      key: key ?? this.key,
      item: item ?? this.item,
      auctionHouseItems: auctionHouseItems ?? this.auctionHouseItems,
      showStacked: showStacked ?? this.showStacked,
    );
  }

  @override
  List<Object> get props => [key, item, auctionHouseItems, showStacked];

  @override
  String toString() => 'Item show success { key: $key, item: ${item.name} }';
}
