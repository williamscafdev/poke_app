// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprites_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpritesDataImpl _$$SpritesDataImplFromJson(Map<String, dynamic> json) =>
    _$SpritesDataImpl(
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesDataImplToJson(_$SpritesDataImpl instance) =>
    <String, dynamic>{
      'other': instance.other?.toJson(),
    };

_$OtherImpl _$$OtherImplFromJson(Map<String, dynamic> json) => _$OtherImpl(
      officialArtwork: json['official-artwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherImplToJson(_$OtherImpl instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork?.toJson(),
    };

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$$OfficialArtworkImplToJson(
        _$OfficialArtworkImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };
