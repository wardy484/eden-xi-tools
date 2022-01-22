// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_favourites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemFavourites _$ItemFavouritesFromJson(Map<String, dynamic> json) =>
    ItemFavourites(
      favourites: (json['favourites'] as List<dynamic>)
          .map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemFavouritesToJson(ItemFavourites instance) =>
    <String, dynamic>{
      'favourites': instance.favourites,
    };
