import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/core/router/router_provider.gr.dart';
import 'package:poke_app/src/models/models.dart';

class Pokemons extends StatelessWidget {
  const Pokemons({
    required this.scrollController,
    required this.onRefresh,
    required this.pokemons,
    required this.isTotal,
    required this.searchText,
    required this.isLoadingPage,
    required this.onTapFavorite,
    required this.onUpdateFavorite,
    super.key,
  });
  final ScrollController scrollController;
  final Future<void> Function() onRefresh;
  final List<PokemonData> pokemons;
  final bool isTotal;
  final String searchText;
  final bool isLoadingPage;
  final Function(int) onTapFavorite;
  final Function(PokemonData) onUpdateFavorite;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: GridView.custom(
          controller: scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount:
                searchText.isEmpty ? pokemons.length + 1 : pokemons.length,
            (context, index) {
              if (pokemons.isEmpty) {
                return const Center(
                  child: Text('No se encontraron pokemons'),
                );
              }

              if (index == pokemons.length && !isTotal && searchText.isEmpty) {
                if (!isLoadingPage) {
                  return gap0;
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              } else {
                final pokemon = pokemons[index];
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.all(
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
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: const [0.1, 0.6],
                            colors: [
                              AppColors.black.withOpacity(0.3),
                              AppColors.grey.withOpacity(0.1),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: padSy26,
                          child: Image.network(
                            pokemon.sprites?.other?.officialArtwork
                                    ?.frontDefault ??
                                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: InkWell(
                          onTap: () => onTapFavorite(pokemon.id!),
                          child: pokemon.isFavorite!
                              ? const Icon(
                                  Icons.favorite,
                                  color: AppColors.red,
                                )
                              : const Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          pokemon.name ?? '',
                          style: TextStyleApp.bodyBold,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: InkWell(
                          splashFactory: InkRipple.splashFactory,
                          onTap: () => autoRouterPushParamsAsync(
                            context,
                            DetailScreenRoute(
                              pokemonData: pokemon,
                            ),
                            onUpdateFavorite,
                          ),
                          child: const Icon(Icons.arrow_circle_right_outlined),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
