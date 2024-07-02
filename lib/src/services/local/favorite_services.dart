import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_app/src/src.dart';

abstract class FavoriteServicesLocalServices {
  Future<bool> getFavorite(int id);
  Future<void> saveFavorite(int id);
  Future<void> deleteFavorite(int id);
}

@LazySingleton(as: FavoriteServicesLocalServices)
class FavoriteServicesLocalServicesImpl
    implements FavoriteServicesLocalServices {
  final String _boxName = DBBoxName.favoriteBox;
  @override
  Future<void> deleteFavorite(int id) async {
    final box = await Hive.openBox<FavoriteDb>(_boxName);
    await box.delete(id);
  }

  @override
  Future<bool> getFavorite(int id) async {
    final box = await Hive.openBox<FavoriteDb>(_boxName);
    final favorite = box.get(id);
    return favorite != null;
  }

  @override
  Future<void> saveFavorite(int id) async {
    final box = await Hive.openBox<FavoriteDb>(_boxName);

    await box.put(id, FavoriteDb(id: id));
  }
}
