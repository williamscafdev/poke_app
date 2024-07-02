import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/presentation/detail/screen/vm/detail_vm.dart';
import 'package:poke_app/presentation/detail/widgets/stats_pokemon.dart';
import 'package:poke_app/src/src.dart';
import 'package:provider/provider.dart';

class TabStatsPokemon extends StatelessWidget {
  const TabStatsPokemon({
    required this.pokemonData,
    super.key,
  });

  final PokemonData pokemonData;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DetailViewModel>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.grey10.withOpacity(0.2),
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
              gradient: LinearGradient(
                stops: const [0.2, 0.6],
                colors: [
                  AppColors.grey10.withOpacity(0),
                  AppColors.grey10.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Column(
            children: [
              gap8,
              StatsPokemon(
                label: 'HP',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'hp',
                ),
              ),
              StatsPokemon(
                label: 'Attack',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'attack',
                ),
              ),
              StatsPokemon(
                label: 'Defense',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'defense',
                ),
              ),
              StatsPokemon(
                label: 'Sp Atk',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'special-attack',
                ),
              ),
              StatsPokemon(
                label: 'Sp def',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'special-defense',
                ),
              ),
              StatsPokemon(
                label: 'Speed',
                value: provider.getStatValue(
                  pokemonData.stats!,
                  'speed',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
