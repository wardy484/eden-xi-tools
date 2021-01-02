// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_favourites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemFavourites _$ItemFavouritesFromJson(Map<String, dynamic> json) {
  return ItemFavourites(
    favourites: (json['favourites'] as List)
        ?.map((e) => e == null
            ? null
            : SearchResultItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ItemFavouritesToJson(ItemFavourites instance) =>
    <String, dynamic>{
      'favourites': instance.favourites,
    };
