import 'package:poke_app/flavors.dart';
import 'package:poke_app/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  await runner.main();
}
