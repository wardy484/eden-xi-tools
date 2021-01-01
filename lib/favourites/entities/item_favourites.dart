import 'package:eden_xi_tools/eden/search/entities/search_result_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_favourites.g.dart';

@JsonSerializable()
class ItemFavourites extends Equatable {
  final List<SearchResultItem> favourites;

  const ItemFavourites({
    @required this.favourites,
  });

  @override
  List<Object> get props => [favourites];

  bool get hasFavourites => favourites.length > 0;

  void addItem(SearchResultItem item) {
    favourites.add(item);
  }

  List<SearchResultItem> withoutItem(SearchResultItem item) {
    return favourites.where((element) => element.name != item.name).toList();
  }

  bool contains(SearchResultItem item) {
    return favourites.any((element) => element.name == item.name);
  }

  List<SearchResultItem> all() => favourites;

  @override
  String toString() => 'PlayerFavourites { id: $favourites }';

  factory ItemFavourites.fromJson(Map<String, dynamic> json) =>
      _$ItemFavouritesFromJson(json);

  Map<String, dynamic> toJson() => _$ItemFavouritesToJson(this);
}
