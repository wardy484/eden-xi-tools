// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerSearchResultItem _$PlayerSearchResultItemFromJson(
    Map<String, dynamic> json) {
  return PlayerSearchResultItem(
    avatar: json['avatar'] as String,
    charname: json['charname'] as String,
    jobString: json['jobString'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$PlayerSearchResultItemToJson(
        PlayerSearchResultItem instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'charname': instance.charname,
      'jobString': instance.jobString,
      'title': instance.title,
    };
