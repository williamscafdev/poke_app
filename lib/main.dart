import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poke_app/app.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/injection.dart' as di;
import 'package:poke_app/src/src.dart';

FutureOr<void> main() async {
  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      DartPluginRegistrant.ensureInitialized();
      await HiveProvider.initializeHive();
      await di.configureDependencies(EnvironmentApp.dev);

      runApp(const App());
    },
    (e, s) {
      log(
        'RunZonedGuarded',
        error: e,
        stackTrace: s,
      );
    },
  );
}
