// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsInfoImpl _$$StatsInfoImplFromJson(Map<String, dynamic> json) =>
    _$StatsInfoImpl(
      baseStat: (json['base_stat'] as num?)?.toInt(),
      effort: (json['effort'] as num?)?.toInt(),
      stat: json['stat'] == null
          ? null
          : Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsInfoImplToJson(_$StatsInfoImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat?.toJson(),
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
