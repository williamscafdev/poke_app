import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/repositories/repositories.dart';

@lazySingleton
class SavedFavoriteById {
  SavedFavoriteById(
    this._favoriteLocalRepository,
  );
  final FavoriteLocalRepository _favoriteLocalRepository;

  Future<Either<Failure, void>> call({
    required int id,
  }) =>
      _favoriteLocalRepository.saveFavorite(id);
}
