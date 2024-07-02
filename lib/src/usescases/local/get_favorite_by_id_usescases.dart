import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:poke_app/src/repositories/repositories.dart';

@lazySingleton
class GetFavoriteById {
  GetFavoriteById(
    this._favoriteLocalRepository,
  );
  final FavoriteLocalRepository _favoriteLocalRepository;

  Future<bool> call({
    required int id,
  }) async {
    final failureOrFavorite = await _favoriteLocalRepository.getFavorite(id);

    return failureOrFavorite.when(
      left: (error) {
        log('Error: $error');
        return false;
      },
      right: (isFavorite) => isFavorite,
    );
  }
}
