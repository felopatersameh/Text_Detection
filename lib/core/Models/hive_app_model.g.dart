// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_app_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveAppModelAdapter extends TypeAdapter<HiveAppModel> {
  @override
  final int typeId = 0;

  @override
  HiveAppModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveAppModel()
      .._token = fields[0] as String?
      .._id = fields[1] as String?
      .._refreshToken = fields[2] as String?
      .._onboarding = fields[3] as bool;
  }

  @override
  void write(BinaryWriter writer, HiveAppModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj._token)
      ..writeByte(1)
      ..write(obj._id)
      ..writeByte(2)
      ..write(obj._refreshToken)
      ..writeByte(3)
      ..write(obj._onboarding);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveAppModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
