import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/core/router/router_provider.gr.dart';

part 'app_routes.dart';

void autoRouterPopUntil(BuildContext context, String nameRouter) {
  context.router.popUntilRouteWithName(nameRouter);
}

void autoRouterPushNamed(BuildContext context, String namePath) {
  context.router.pushNamed(namePath);
}

void autoRouterPush(BuildContext context, PageRouteInfo route) {
  context.router.push(route);
}

void autoRouterReplace(BuildContext context, PageRouteInfo route) {
  context.router.replace(route);
}

void autoRouterPop(BuildContext context) {
  context.router.maybePop(context);
}

void autoRouterPopWithValue(BuildContext context) {
  context.router.maybePop(true);
}

void autoRouterPopWithObject(BuildContext context, Object object) {
  context.router.maybePop(object);
}

void autoRouterPopWithReportId(BuildContext context, String id) {
  context.router.maybePop(id);
}

void autoRouterPushAndPopUntil(BuildContext context, PageRouteInfo route) {
  context.router.pushAndPopUntil(route, predicate: (route) => false);
}

void autoRouterPushAndRemoveLast(BuildContext context, PageRouteInfo route) {
  context.router.push(route);
  context.router.removeLast();
}

Future<void> autoRouterPushNamedAsync(
  BuildContext context,
  String namePath,
  Function callback,
) async {
  await context.router.pushNamed(namePath).then(
        (value) => callback(value),
      );
}

Future<void> autoRouterPushParamsAsync(
  BuildContext context,
  PageRouteInfo screen,
  Function callback,
) async {
  await context.router.push(screen).then((value) {
    callback(value);
  });
}

void autoRouterPushParams(
  BuildContext context,
  PageRouteInfo screen,
) =>
    context.router.push(screen);

void goPushAndRemoveUntil(BuildContext context, PageRouteInfo screen) {
  context.router.replaceAll([screen]);
}
