// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_favourites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerFavourites _$PlayerFavouritesFromJson(Map<String, dynamic> json) =>
    PlayerFavourites(
      favourites: (json['favourites'] as List<dynamic>)
          .map(
              (e) => PlayerSearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlayerFavouritesToJson(PlayerFavourites instance) =>
    <String, dynamic>{
      'favourites': instance.favourites,
    };
