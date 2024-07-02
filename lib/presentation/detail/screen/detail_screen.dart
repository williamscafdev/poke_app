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
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.7, 2],
                    colors: [
                      AppColors.black,
                      AppColors.grey10.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: padSy16,
                child: Column(
                  children: [
                    SizedBox(
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
                              pokemonData.sprites?.other?.officialArtwork
                                      ?.frontDefault ??
                                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    gap16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              '${viewModel.converToMeters(
                                pokemonData.height!,
                              )} M',
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
                              '${viewModel.convertToKg(
                                pokemonData.weight!,
                              )} KG',
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
                    ),
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: AppColors.white,
                            unselectedLabelColor: AppColors.grey50,
                            indicatorColor: AppColors.white,
                            dividerColor: AppColors.grey100,
                            dividerHeight: 0,
                            padding: pad0,
                            labelPadding: pad0,
                            overlayColor:
                                WidgetStateProperty.all(AppColors.black),
                            splashFactory: InkRipple.splashFactory,
                            splashBorderRadius: BorderRadius.circular(16),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Stats',
                                  style: TextStyleApp.bodyBold.copyWith(
                                    height: 4,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Moves',
                                  style: TextStyleApp.bodyBold.copyWith(
                                    color: AppColors.grey50,
                                    fontSize: 16,
                                    height: 4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          gap24,
                          SizedBox(
                            height: 250,
                            child: TabBarView(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.36,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              AppColors.grey10.withOpacity(0.2),
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
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'hp',
                                            ),
                                          ),
                                          StatsPokemon(
                                            label: 'Attack',
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'attack',
                                            ),
                                          ),
                                          StatsPokemon(
                                            label: 'Defense',
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'defense',
                                            ),
                                          ),
                                          StatsPokemon(
                                            label: 'Sp Atk',
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'special-attack',
                                            ),
                                          ),
                                          StatsPokemon(
                                            label: 'Sp def',
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'special-defense',
                                            ),
                                          ),
                                          StatsPokemon(
                                            label: 'Speed',
                                            value: viewModel.getStatValue(
                                              pokemonData.stats!,
                                              'speed',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.36,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              AppColors.grey10.withOpacity(0.2),
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
            ],
          ),
        ),
      ),
    );
  }
}
