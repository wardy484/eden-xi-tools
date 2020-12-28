import 'package:equatable/equatable.dart';

class SearchResultItem extends Equatable {
  final int id;
  final String name;
  final String sort;
  final String key;

  const SearchResultItem({this.id, this.name, this.sort, this.key});

  @override
  List<Object> get props => [id, name, sort, key];

  @override
  String toString() => 'Search Result Item { id: $id }';
}
