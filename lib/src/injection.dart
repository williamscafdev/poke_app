import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_app/core/core.dart';
import 'package:poke_app/src/injection.config.dart';

GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies(EnvironmentApp env) async {
  sl.init();
  EnvironmentConfig.setEnvironment(env);
}
