import 'package:hive/hive.dart';
part 'data_model_mern.g.dart';

@HiveType(typeId: 2)
class CourseMern {
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
  String sectionsmern;
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

  CourseMern({
    required this.coursename,
    required this.logolink,
    required this.youtubevideoid,
    required this.blog,
    required this.sectionsmern,
    required this.beginner,
    required this.overviewcoursename,
    required this.time,
    required this.whatyouwilllearn,
    required this.ischecked,
    this.id,
  });
}
