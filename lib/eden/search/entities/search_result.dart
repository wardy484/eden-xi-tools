import 'package:equatable/equatable.dart';
import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';

class SearchResult extends Equatable {
  final int total;
  final List<SearchResultItem> items;

  const SearchResult({this.total, this.items});

  @override
  List<Object> get props => [total, items];

  @override
  String toString() => 'Search Result { total: $total }';
}
