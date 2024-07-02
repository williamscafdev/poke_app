// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteDbAdapter extends TypeAdapter<FavoriteDb> {
  @override
  final int typeId = 1;

  @override
  FavoriteDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteDb(
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteDb obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
