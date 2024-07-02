import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/presentation/detail/widgets/widgets.dart';
import 'package:poke_app/src/src.dart';

class TabMovesPokemon extends StatelessWidget {
  const TabMovesPokemon({
    required this.pokemonData,
    required this.labels,
    super.key,
  });

  final PokemonData pokemonData;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
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
          ShipMovesPokemon(
            labels: labels,
          ),
        ],
      ),
    );
  }
}
