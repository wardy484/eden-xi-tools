import 'package:eden_xi_tools_api/eden_xi_tools_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_favourites.g.dart';

@JsonSerializable()
class PlayerFavourites extends Equatable {
  final List<PlayerSearchResultItem> favourites;

  const PlayerFavourites({
    required this.favourites,
  });

  @override
  List<Object> get props => [favourites];

  bool get isEmpty => favourites.length < 1;
  int get count => favourites.length;

  void add(PlayerSearchResultItem player) {
    favourites.add(player);
  }

  PlayerSearchResultItem atIndex(int index) {
    return favourites[index];
  }

  List<PlayerSearchResultItem> all() => favourites;

  List<PlayerSearchResultItem> without(PlayerSearchResultItem player) {
    return favourites
        .where((element) => element.charname != player.charname)
        .toList();
  }

  List<PlayerSearchResultItem> top(int count) {
    return favourites.sublist(
        0, favourites.length > count ? count : favourites.length);
  }

  @override
  String toString() => 'PlayerFavourites { id: $favourites }';

  factory PlayerFavourites.fromJson(Map<String, dynamic> json) =>
      _$PlayerFavouritesFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerFavouritesToJson(this);

  bool contains(String playerName) {
    return favourites.any((player) => player.charname == playerName);
  }
}
