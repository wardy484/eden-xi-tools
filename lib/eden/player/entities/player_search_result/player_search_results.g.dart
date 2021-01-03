// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerSearchResult _$_$_PlayerSearchResultFromJson(
    Map<String, dynamic> json) {
  return _$_PlayerSearchResult(
    total: json['total'] as int,
    items: (json['chars'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerSearchResultItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PlayerSearchResultToJson(
        _$_PlayerSearchResult instance) =>
    <String, dynamic>{
      'total': instance.total,
      'chars': instance.items,
    };
