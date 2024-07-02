// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:poke_app/presentation/detail/screen/detail_screen.dart' as _i1;
import 'package:poke_app/presentation/home/screen/home_screen.dart' as _i2;
import 'package:poke_app/presentation/splash/screen/splash_screen.dart' as _i3;
import 'package:poke_app/src/models/models.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailScreenRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailScreen(
          pokemonData: args.pokemonData,
          key: args.key,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailScreen]
class DetailScreenRoute extends _i4.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({
    required _i5.PokemonData pokemonData,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailScreenRoute.name,
          args: DetailScreenRouteArgs(
            pokemonData: pokemonData,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailScreenRoute';

  static const _i4.PageInfo<DetailScreenRouteArgs> page =
      _i4.PageInfo<DetailScreenRouteArgs>(name);
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({
    required this.pokemonData,
    this.key,
  });

  final _i5.PokemonData pokemonData;

  final _i6.Key? key;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{pokemonData: $pokemonData, key: $key}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
