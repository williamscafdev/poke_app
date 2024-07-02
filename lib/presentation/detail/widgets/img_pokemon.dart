import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/src.dart';

class ImgPokemon extends StatelessWidget {
  const ImgPokemon({
    required this.pokemonData,
    super.key,
  });

  final PokemonData pokemonData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              gradient: LinearGradient(
                stops: const [0.2, 0.6],
                colors: [
                  AppColors.black.withOpacity(0.5),
                  AppColors.grey.withOpacity(0.1),
                ],
              ),
            ),
          ),
          Center(
            child: Image.network(
              pokemonData.sprites?.other?.officialArtwork?.frontDefault ??
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
