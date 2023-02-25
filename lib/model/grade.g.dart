// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GradeAdapter extends TypeAdapter<Grade> {
  @override
  final int typeId = 1;

  @override
  Grade read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Grade(
      fields[7] as int,
      fields[8] as int,
      fields[9] as int,
      fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Grade obj) {
    writer
      ..writeByte(4)
      ..writeByte(7)
      ..write(obj.A)
      ..writeByte(8)
      ..write(obj.B)
      ..writeByte(9)
      ..write(obj.C)
      ..writeByte(10)
      ..write(obj.D);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GradeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
