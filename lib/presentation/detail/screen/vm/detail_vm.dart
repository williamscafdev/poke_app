import 'package:flutter/material.dart';
import 'package:poke_app/src/src.dart';

class DetailViewModel extends ChangeNotifier {
  DetailViewModel({
    required this.pokemon,
  });

  PokemonData pokemon;

  double converToMeters(int decimeters) {
    return decimeters / 10;
  }

  double convertToKg(int hectograms) {
    return hectograms / 10;
  }

  int getStatValue(List<StatsInfo> stats, String statName) {
    final indexWhere =
        stats.indexWhere((element) => element.stat!.name == statName);
    return stats[indexWhere].baseStat!;
  }

  List<String> getMoves(List<MoveData> moves) {
    return moves.map((e) => e.move!.name!).toList();
  }

  Future<void> onTapFavorite() async {
    final isFavorite = await sl<GetFavoriteById>().call(id: pokemon.id!);

    if (isFavorite) {
      await sl<DeleteFavoriteById>().call(id: pokemon.id!);
    } else {
      await sl<SavedFavoriteById>().call(id: pokemon.id!);
    }
    pokemon = pokemon.copyWith(isFavorite: !isFavorite);
    notifyListeners();
  }
}
