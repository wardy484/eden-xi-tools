import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';

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

  const ItemSearchSuccess({
    required this.results,
    required this.hasReachedMax,
    this.itemName = "",
  });

  ItemSearchSuccess copyWith({
    SearchResult? results,
    bool? hasReachedMax,
    String? itemName,
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
