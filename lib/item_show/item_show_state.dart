import 'package:equatable/equatable.dart';
import 'package:eden_xi_tools/eden/items/entities/bazaar_item/bazaar_item.dart';
import 'package:eden_xi_tools/eden/items/entities/item/item.dart';

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
  final List<BazaarItem> bazaarItems;
  final bool showStacked;

  const ItemShowSuccess({
    this.key,
    this.item,
    this.showStacked,
    this.bazaarItems,
  });

  ItemShowSuccess copyWith({
    String key,
    Item item,
    List<BazaarItem> bazaarItems,
    bool showStacked,
  }) {
    return ItemShowSuccess(
      key: key ?? this.key,
      item: item ?? this.item,
      bazaarItems: bazaarItems ?? this.bazaarItems,
      showStacked: showStacked ?? this.showStacked,
    );
  }

  @override
  List<Object> get props => [
        key,
        item,
        bazaarItems,
        showStacked,
      ];

  @override
  String toString() => 'Item show success { key: $key, item: ${item.name} }';
}
