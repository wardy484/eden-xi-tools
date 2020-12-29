import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ItemSearchEvent extends Equatable {
  const ItemSearchEvent();

  @override
  List<Object> get props => [];
}

class InitiateItemSearch extends ItemSearchEvent {}

class ItemSearchFetched extends ItemSearchEvent {}

class ItemSearchRequested extends ItemSearchEvent {
  final String itemName;

  const ItemSearchRequested({@required this.itemName})
      : assert(itemName != null);

  @override
  List<Object> get props => [itemName];
}
