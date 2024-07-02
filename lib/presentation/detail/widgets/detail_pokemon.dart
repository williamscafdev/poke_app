import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/src.dart';

class DetailPokemon extends StatelessWidget {
  const DetailPokemon({
    required this.pokemonData,
    required this.meters,
    required this.kg,
    super.key,
  });

  final PokemonData pokemonData;
  final double meters;
  final double kg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              '$meters M',
              style: TextStyleApp.bodyBold.copyWith(
                fontSize: 20,
              ),
            ),
            gap4,
            const Text(
              'Height',
              style: TextStyleApp.body,
            ),
          ],
        ),
        space30,
        Center(
          child: Image.asset(
            AssetsApp.power.path,
            fit: BoxFit.cover,
            height: 70,
          ),
        ),
        space30,
        Column(
          children: [
            Text(
              '$kg KG',
              style: TextStyleApp.bodyBold.copyWith(
                fontSize: 20,
              ),
            ),
            gap4,
            const Text(
              'Weight',
              style: TextStyleApp.body,
            ),
          ],
        ),
      ],
    );
  }
}
