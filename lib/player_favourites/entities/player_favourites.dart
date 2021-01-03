import 'package:eden_xi_tools/eden/player/entities/player_search_result_item/player_search_result_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_favourites.g.dart';

@JsonSerializable()
class PlayerFavourites extends Equatable {
  final List<PlayerSearchResultItem> favourites;

  const PlayerFavourites({
    @required this.favourites,
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

  @override
  String toString() => 'PlayerFavourites { id: $favourites }';

  factory PlayerFavourites.fromJson(Map<String, dynamic> json) =>
      _$PlayerFavouritesFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerFavouritesToJson(this);

  bool contains(String playerName) {
    return favourites.any((player) => player.charname == playerName);
  }
}
