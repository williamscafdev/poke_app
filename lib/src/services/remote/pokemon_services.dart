import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/models/models.dart';

abstract class PokemonServicesRemoteServices {
  Future<List<PokemonData>> getPokemons({
    int limit = 20,
    int page = 0,
  });
}

@LazySingleton(as: PokemonServicesRemoteServices)
class PokemonServicesRemoteServicesImpl
    implements PokemonServicesRemoteServices {
  @override
  Future<List<PokemonData>> getPokemons({
    int limit = 20,
    int page = 0,
  }) async {
    final pokemonsList = <PokemonData>[];
    try {
      final response = await Api.dio.getDecorator(
        '/pokemon',
        queryParameters: {
          'limit': limit,
          'offset': page * limit,
        },
      );
      final results = response.data['results'] as List<dynamic>;
      for (final item in results) {
        final responseData = await Api.dio.getDecorator(
          item['url'].toString(),
        );
        final data = responseData.data as Map<String, dynamic>;
        final pokemonData = PokemonData.fromJson(data);
        pokemonsList.add(pokemonData);
      }

      return pokemonsList;
    } catch (e) {
      rethrow;
    }
  }
}
