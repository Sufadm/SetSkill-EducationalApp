import 'package:hive/hive.dart';
part 'blog_model.g.dart';

@HiveType(typeId: 3)
class BlogModel {
  @HiveField(0)
  String logolink;
  @HiveField(1)
  String topic;
  @HiveField(2)
  String name;
  @HiveField(3)
  String imagelink;
  @HiveField(4)
  String blogs;
  @HiveField(5)
  int? id;
  BlogModel(
      {required this.logolink,
      required this.imagelink,
      required this.blogs,
      required this.name,
      required this.topic,
      this.id});
}
