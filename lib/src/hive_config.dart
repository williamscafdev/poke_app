import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poke_app/src/db_hive/favorite_db.dart';

class HiveProvider {
  static Future<void> initializeHive() async {
    final dir = await getApplicationDocumentsDirectory();

    Hive //27
      ..init(dir.path)
      ..registerAdapter(
        FavoriteDbAdapter(),
        override: true,
      ); //;
  }
}
