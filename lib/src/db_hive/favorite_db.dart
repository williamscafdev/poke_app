import 'package:hive/hive.dart';
import 'package:poke_app/src/enum/enum.dart';

part 'favorite_db.g.dart';

@HiveType(typeId: DBObject.favoriteData)
class FavoriteDb extends HiveObject {
  FavoriteDb({
    this.id,
  });
  @HiveField(0)
  int? id;
}
