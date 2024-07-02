import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/models/models.dart';
import 'package:poke_app/src/services/remote/pokemon_services.dart';

abstract class PokemonDataRemoteRepository {
  Future<Either<Failure, List<PokemonData>>> getPokemons({
    int limit = 20,
    int page = 0,
  });
}

@LazySingleton(as: PokemonDataRemoteRepository)
class PokemonDataRemoteRepositoryImpl implements PokemonDataRemoteRepository {
  PokemonDataRemoteRepositoryImpl(this._services);
  final PokemonServicesRemoteServices _services;

  @override
  Future<Either<Failure, List<PokemonData>>> getPokemons({
    int limit = 20,
    int page = 0,
  }) =>
      futureDecorator(() => _services.getPokemons(limit: limit, page: page));
}
