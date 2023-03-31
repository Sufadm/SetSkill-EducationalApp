// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseFlutterAdapter extends TypeAdapter<CourseFlutter> {
  @override
  final int typeId = 1;

  @override
  CourseFlutter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseFlutter(
      coursename: fields[1] as String,
      logolink: fields[2] as String,
      youtubevideoid: fields[3] as String,
      blog: fields[4] as String,
      sections: fields[5] as String,
      beginner: fields[8] as String,
      overviewcoursename: fields[6] as String,
      time: fields[7] as String,
      whatyouwilllearn: fields[9] as String,
      ischecked: fields[10] as bool,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CourseFlutter obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.coursename)
      ..writeByte(2)
      ..write(obj.logolink)
      ..writeByte(3)
      ..write(obj.youtubevideoid)
      ..writeByte(4)
      ..write(obj.blog)
      ..writeByte(5)
      ..write(obj.sections)
      ..writeByte(6)
      ..write(obj.overviewcoursename)
      ..writeByte(7)
      ..write(obj.time)
      ..writeByte(8)
      ..write(obj.beginner)
      ..writeByte(9)
      ..write(obj.whatyouwilllearn)
      ..writeByte(10)
      ..write(obj.ischecked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseFlutterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
