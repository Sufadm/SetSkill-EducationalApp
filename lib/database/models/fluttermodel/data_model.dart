import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class CourseFlutter {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String coursename;
  @HiveField(2)
  String logolink;
  @HiveField(3)
  String youtubevideoid;
  @HiveField(4)
  String blog;
  @HiveField(5)
  String sections;
  @HiveField(6)
  String overviewcoursename;
  @HiveField(7)
  String time;
  @HiveField(8)
  String beginner;
  @HiveField(9)
  String whatyouwilllearn;
  @HiveField(10)
  bool ischecked;

  CourseFlutter({
    required this.coursename,
    required this.logolink,
    required this.youtubevideoid,
    required this.blog,
    required this.sections,
    required this.beginner,
    required this.overviewcoursename,
    required this.time,
    required this.whatyouwilllearn,
    required this.ischecked,
    this.id,
  });
}
