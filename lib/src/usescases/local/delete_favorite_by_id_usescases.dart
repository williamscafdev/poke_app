import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/repositories/repositories.dart';

@lazySingleton
class DeleteFavoriteById {
  DeleteFavoriteById(
    this._favoriteLocalRepository,
  );
  final FavoriteLocalRepository _favoriteLocalRepository;

  Future<Either<Failure, void>> call({
    required int id,
  }) =>
      _favoriteLocalRepository.deleteFavorite(id);
}
