// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      jobString: json['jobString'] as String,
      jobs: PlayerJobs.fromJson(json['jobs'] as Map<String, dynamic>),
      mentor: json['mentor'] as int,
      name: json['name'] as String,
      nameflags: json['nameflags'] as int,
      nation: json['nation'] as int,
      ranks: PlayerRanks.fromJson(json['ranks'] as Map<String, dynamic>),
      title: json['title'] as String,
      online: json['online'] as int,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'jobString': instance.jobString,
      'jobs': instance.jobs,
      'mentor': instance.mentor,
      'name': instance.name,
      'nameflags': instance.nameflags,
      'nation': instance.nation,
      'ranks': instance.ranks,
      'title': instance.title,
      'online': instance.online,
    };
