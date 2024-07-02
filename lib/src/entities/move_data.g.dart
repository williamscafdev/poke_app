// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveInfoImpl _$$MoveInfoImplFromJson(Map<String, dynamic> json) =>
    _$MoveInfoImpl(
      move: (json['move'] as List<dynamic>?)
          ?.map((e) => MoveData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MoveInfoImplToJson(_$MoveInfoImpl instance) =>
    <String, dynamic>{
      'move': instance.move?.map((e) => e.toJson()).toList(),
    };

_$MoveDatatImpl _$$MoveDatatImplFromJson(Map<String, dynamic> json) =>
    _$MoveDatatImpl(
      move: json['move'] == null
          ? null
          : Move.fromJson(json['move'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoveDatatImplToJson(_$MoveDatatImpl instance) =>
    <String, dynamic>{
      'move': instance.move?.toJson(),
    };

_$MoveImpl _$$MoveImplFromJson(Map<String, dynamic> json) => _$MoveImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MoveImplToJson(_$MoveImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
