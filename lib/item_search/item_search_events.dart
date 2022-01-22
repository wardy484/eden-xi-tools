import 'package:equatable/equatable.dart';

abstract class ItemSearchEvent extends Equatable {
  const ItemSearchEvent();

  @override
  List<Object> get props => [];
}

class ItemSearchCleared extends ItemSearchEvent {}

class ItemSearchFetched extends ItemSearchEvent {}

class ItemSearchRequested extends ItemSearchEvent {
  final String itemName;

  const ItemSearchRequested({required this.itemName});

  @override
  List<Object> get props => [itemName];
}
