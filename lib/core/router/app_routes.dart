part of 'router_provider.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashScreenRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: HomeScreenRoute.page,
        ),
        AutoRoute(
          page: DetailScreenRoute.page,
        ),
      ];
}
