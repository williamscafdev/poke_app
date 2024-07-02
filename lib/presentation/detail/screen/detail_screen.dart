import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/presentation/detail/screen/vm/detail_vm.dart';
import 'package:poke_app/presentation/detail/widgets/widgets.dart';
import 'package:poke_app/src/models/models.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({
    required this.pokemonData,
    super.key,
  });
  final PokemonData pokemonData;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DetailViewModel>(
      create: (BuildContext screenContext) =>
          DetailViewModel(pokemon: pokemonData),
      child: Consumer<DetailViewModel>(
        builder: (_, DetailViewModel viewModel, __) => Scaffold(
          appBar: AppBar(
            title: Text(
              pokemonData.name ?? '',
              style: TextStyleApp.h1Header.w900.copyWith(
                fontSize: 34,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () =>
                  autoRouterPopWithObject(context, viewModel.pokemon),
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                onPressed: () => viewModel.onTapFavorite(),
                icon: viewModel.pokemon.isFavorite!
                    ? const Icon(
                        Icons.favorite,
                        color: AppColors.red,
                      )
                    : const Icon(Icons.favorite_border_outlined),
              ),
            ],
          ),
          body: Stack(
            children: [
              const GradientBackgroundImg(),
              Padding(
                padding: padSy16,
                child: Column(
                  children: [
                    ImgPokemon(pokemonData: pokemonData),
                    gap16,
                    DetailPokemon(
                      pokemonData: pokemonData,
                      meters: viewModel.converToMeters(pokemonData.height!),
                      kg: viewModel.convertToKg(pokemonData.weight!),
                    ),
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          const TabBarPokemon(),
                          SizedBox(
                            height: 250,
                            child: TabBarView(
                              children: [
                                TabStatsPokemon(pokemonData: pokemonData),
                                TabMovesPokemon(
                                  pokemonData: pokemonData,
                                  labels: viewModel.getMoves(
                                    pokemonData.moves!,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
