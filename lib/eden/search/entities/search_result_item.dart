import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result_item.g.dart';

@JsonSerializable()
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

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultItemToJson(this);
}
