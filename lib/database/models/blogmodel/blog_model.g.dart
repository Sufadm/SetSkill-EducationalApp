// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BlogModelAdapter extends TypeAdapter<BlogModel> {
  @override
  final int typeId = 3;

  @override
  BlogModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BlogModel(
      logolink: fields[0] as String,
      imagelink: fields[3] as String,
      blogs: fields[4] as String,
      name: fields[2] as String,
      topic: fields[1] as String,
      id: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BlogModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.logolink)
      ..writeByte(1)
      ..write(obj.topic)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.imagelink)
      ..writeByte(4)
      ..write(obj.blogs)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlogModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
