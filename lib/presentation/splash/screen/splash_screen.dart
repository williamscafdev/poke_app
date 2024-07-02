import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/core/router/router_provider.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      autoRouterPushAndPopUntil(context, const HomeScreenRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsApp.iconApp.path,
              width: 100,
              height: 100,
            ),
            const Text(
              'Bienvenido a PokeApp!',
              style: TextStyleApp.h1,
            ),
          ],
        ),
      ),
    );
  }
}
