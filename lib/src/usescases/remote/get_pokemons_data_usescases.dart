import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/src.dart';

@lazySingleton
class GetPokemonsData {
  GetPokemonsData(
    this._pokemonDataRemoteRepository,
  );
  final PokemonDataRemoteRepository _pokemonDataRemoteRepository;

  Future<Either<Failure, List<PokemonData>>> call({
    int limit = 20,
    int page = 0,
  }) async {
    final failureOrPokemons = await _pokemonDataRemoteRepository.getPokemons(
      limit: limit,
      page: page,
    );

    return failureOrPokemons.when(
      left: Either.left,
      right: (pokemonsData) async {
        final pokemonsDataFilter = <PokemonData>[];
        for (final pokemon in pokemonsData) {
          final isFavorite = await sl<GetFavoriteById>().call(id: pokemon.id!);
          pokemonsDataFilter.add(
            pokemon.copyWith(
              isFavorite: isFavorite,
            ),
          );
        }
        return Either.right(pokemonsDataFilter);
      },
    );
  }
}
