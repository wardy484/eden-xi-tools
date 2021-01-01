// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_favourites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerFavourites _$PlayerFavouritesFromJson(Map<String, dynamic> json) {
  return PlayerFavourites(
    favourites: (json['favourites'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerSearchResultItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlayerFavouritesToJson(PlayerFavourites instance) =>
    <String, dynamic>{
      'favourites': instance.favourites,
    };
