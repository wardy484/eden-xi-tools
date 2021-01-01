// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return SearchResultItem(
    id: json['id'] as int,
    name: json['name'] as String,
    sort: json['sort'] as String,
    key: json['key'] as String,
  );
}

Map<String, dynamic> _$SearchResultItemToJson(SearchResultItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sort': instance.sort,
      'key': instance.key,
    };
