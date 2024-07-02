import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/src.dart';

abstract class FavoriteLocalRepository {
  Future<Either<Failure, bool>> getFavorite(int id);
  Future<Either<Failure, void>> saveFavorite(int id);
  Future<Either<Failure, void>> deleteFavorite(int id);
}

@LazySingleton(as: FavoriteLocalRepository)
class FavoriteLocalRepositoryImpl implements FavoriteLocalRepository {
  FavoriteLocalRepositoryImpl(this._services);
  final FavoriteServicesLocalServices _services;

  @override
  Future<Either<Failure, void>> deleteFavorite(int id) async {
    try {
      await _services.deleteFavorite(id);
      return const Either.right(null);
    } catch (e) {
      return const Either.left(
        Failure.localFailure(message: 'Failed to delete favorite'),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> getFavorite(int id) async {
    try {
      final isFavorite = await _services.getFavorite(id);
      return Either.right(isFavorite);
    } catch (e) {
      return const Either.left(
        Failure.localFailure(message: 'Failed to get favorite'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> saveFavorite(int id) async {
    try {
      await _services.saveFavorite(id);
      return const Either.right(null);
    } catch (e) {
      return const Either.left(
        Failure.localFailure(message: 'Failed to saved favorite'),
      );
    }
  }
}
