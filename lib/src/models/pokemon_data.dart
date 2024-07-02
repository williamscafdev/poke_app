import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/src/entities/entities.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@freezed
class PokemonData with _$PokemonData {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory PokemonData({
    int? height,
    int? id,
    String? name,
    int? weight,
    List<MoveData>? moves,
    List<StatsInfo>? stats,
    SpritesData? sprites,
    @Default(false) bool? isFavorite,
  }) = _PokemonData;
  factory PokemonData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataFromJson(json);
}
