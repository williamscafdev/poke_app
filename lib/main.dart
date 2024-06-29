import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poke_app/app.dart';

FutureOr<void> main() async {
  runZonedGuarded<void>(
    () async {
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
