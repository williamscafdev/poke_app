// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'repositories/local/favorite_repositories.dart' as _i5;
import 'repositories/remote/pokemon_repositories.dart' as _i11;
import 'repositories/repositories.dart' as _i8;
import 'services/local/favorite_services.dart' as _i4;
import 'services/remote/pokemon_services.dart' as _i3;
import 'src.dart' as _i6;
import 'usescases/local/delete_favorite_by_id_usescases.dart' as _i10;
import 'usescases/local/get_favorite_by_id_usescases.dart' as _i9;
import 'usescases/local/saved_favorite_by_id_usescases.dart' as _i7;
import 'usescases/remote/get_pokemons_data_usescases.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.PokemonServicesRemoteServices>(
        () => _i3.PokemonServicesRemoteServicesImpl());
    gh.lazySingleton<_i4.FavoriteServicesLocalServices>(
        () => _i4.FavoriteServicesLocalServicesImpl());
    gh.lazySingleton<_i5.FavoriteLocalRepository>(() =>
        _i5.FavoriteLocalRepositoryImpl(
            gh<_i6.FavoriteServicesLocalServices>()));
    gh.lazySingleton<_i7.SavedFavoriteById>(
        () => _i7.SavedFavoriteById(gh<_i8.FavoriteLocalRepository>()));
    gh.lazySingleton<_i9.GetFavoriteById>(
        () => _i9.GetFavoriteById(gh<_i8.FavoriteLocalRepository>()));
    gh.lazySingleton<_i10.DeleteFavoriteById>(
        () => _i10.DeleteFavoriteById(gh<_i8.FavoriteLocalRepository>()));
    gh.lazySingleton<_i11.PokemonDataRemoteRepository>(() =>
        _i11.PokemonDataRemoteRepositoryImpl(
            gh<_i3.PokemonServicesRemoteServices>()));
    gh.lazySingleton<_i12.GetPokemonsData>(
        () => _i12.GetPokemonsData(gh<_i8.PokemonDataRemoteRepository>()));
    return this;
  }
}
