// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDataImpl _$$PokemonDataImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDataImpl(
      height: (json['height'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => MoveData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatsInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: json['sprites'] == null
          ? null
          : SpritesData.fromJson(json['sprites'] as Map<String, dynamic>),
      isFavorite: json['is_favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'moves': instance.moves?.map((e) => e.toJson()).toList(),
      'stats': instance.stats?.map((e) => e.toJson()).toList(),
      'sprites': instance.sprites?.toJson(),
      'is_favorite': instance.isFavorite,
    };
