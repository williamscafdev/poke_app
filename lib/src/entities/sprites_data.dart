import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites_data.freezed.dart';
part 'sprites_data.g.dart';

@freezed
class SpritesData with _$SpritesData {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory SpritesData({
    Other? other,
  }) = _SpritesData;
  factory SpritesData.fromJson(Map<String, dynamic> json) =>
      _$SpritesDataFromJson(json);
}

@freezed
class Other with _$Other {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory Other({
    @JsonKey(name: 'official-artwork') OfficialArtwork? officialArtwork,
  }) = _Other;
  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

@freezed
class OfficialArtwork with _$OfficialArtwork {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory OfficialArtwork({
    String? frontDefault,
  }) = _OfficialArtwork;
  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}
