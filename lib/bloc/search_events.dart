import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchFetched extends SearchEvent {}

class SearchRequested extends SearchEvent {
  final String itemName;

  const SearchRequested({@required this.itemName}) : assert(itemName != null);

  @override
  List<Object> get props => [itemName];
}
