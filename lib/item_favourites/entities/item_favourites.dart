import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_favourites.g.dart';

@JsonSerializable()
class ItemFavourites extends Equatable {
  final List<SearchResultItem> favourites;

  const ItemFavourites({
    required this.favourites,
  });

  @override
  List<Object> get props => [favourites];

  bool get isEmpty => favourites.length < 1;
  int get count => favourites.length;

  void add(SearchResultItem player) {
    favourites.add(player);
  }

  SearchResultItem atIndex(int index) {
    return favourites[index];
  }

  List<SearchResultItem> all() => favourites;

  List<SearchResultItem> without(SearchResultItem item) {
    return favourites.where((element) => element.name != item.name).toList();
  }

  List<SearchResultItem> top(int count) {
    return favourites.sublist(
        0, favourites.length > count ? count : favourites.length);
  }

  bool contains(String itemName) {
    return favourites.any((item) => item.name == itemName);
  }

  @override
  String toString() => 'PlayerFavourites { id: $favourites }';

  factory ItemFavourites.fromJson(Map<String, dynamic> json) =>
      _$ItemFavouritesFromJson(json);

  Map<String, dynamic> toJson() => _$ItemFavouritesToJson(this);
}
