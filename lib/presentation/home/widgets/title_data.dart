import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';

class TitleData extends StatelessWidget {
  const TitleData({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Encuentra tu \nPokemon',
      style: TextStyleApp.h1Header.copyWith(
        fontSize: 42,
        height: 1.2,
      ),
    );
  }
}
