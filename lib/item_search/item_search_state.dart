import 'package:equatable/equatable.dart';
import 'package:eden_xi_tools/eden/items/entities/search_result/search_result.dart';

abstract class ItemSearchState extends Equatable {
  final String itemName;

  const ItemSearchState({this.itemName = ""});

  @override
  List<Object> get props => [itemName];
}

class ItemSearchEmpty extends ItemSearchState {}

class ItemSearchInitial extends ItemSearchState {
  final String itemName;

  const ItemSearchInitial({this.itemName = ""});

  @override
  List<Object> get props => [itemName];
}

class ItemSearchFailure extends ItemSearchState {}

class ItemSearchSuccess extends ItemSearchState {
  final SearchResult results;
  final bool hasReachedMax;
  final String itemName;

  const ItemSearchSuccess(
      {this.results, this.hasReachedMax, this.itemName = ""});

  ItemSearchSuccess copyWith({
    SearchResult results,
    bool hasReachedMax,
    String itemName,
  }) {
    return ItemSearchSuccess(
      results: results ?? this.results,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      itemName: itemName ?? this.itemName,
    );
  }

  @override
  List<Object> get props => [results, hasReachedMax, itemName];

  @override
  String toString() =>
      'PostSuccess { search results: ${results.total}, hasReachedMax: $hasReachedMax, itemName: $itemName }';
}
