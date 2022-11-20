// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      maxPlayersOnDashboard: json['maxPlayersOnDashboard'] as int,
      maxItemsOnDashboard: json['maxItemsOnDashboard'] as int,
      darkMode: json['darkMode'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'maxPlayersOnDashboard': instance.maxPlayersOnDashboard,
      'maxItemsOnDashboard': instance.maxItemsOnDashboard,
      'darkMode': instance.darkMode,
    };
