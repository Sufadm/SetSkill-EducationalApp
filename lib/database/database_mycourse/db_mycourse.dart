import 'package:hive/hive.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import '../database_mern/database_mern.dart';
import '../models/fluttermodel/data_model.dart';
import '../models/model_mern/data_model_mern.dart';

Future<void> adding(CourseFlutter section) async {
  final coursedetailsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  if (!section.ischecked) {
    final crcFlutter = CourseFlutter(
        coursename: section.coursename,
        logolink: section.logolink,
        youtubevideoid: section.youtubevideoid,
        blog: section.blog,
        sections: section.sections,
        beginner: section.beginner,
        overviewcoursename: section.overviewcoursename,
        time: section.time,
        whatyouwilllearn: section.whatyouwilllearn,
        ischecked: true);
    await coursedetailsDB.put(section.id, crcFlutter);
    courselistNotifier.value.clear();
    courselistNotifier.value.addAll(coursedetailsDB.values);
  }
}

Future<void> addingmern(CourseMern section) async {
  final coursedetailsmernDB =
      await Hive.openBox<CourseMern>('coursedetailsmern');
  if (!section.ischecked) {
    final crcMern = CourseMern(
        coursename: section.coursename,
        logolink: section.logolink,
        youtubevideoid: section.youtubevideoid,
        blog: section.blog,
        sectionsmern: section.sectionsmern,
        beginner: section.beginner,
        overviewcoursename: section.overviewcoursename,
        time: section.time,
        whatyouwilllearn: section.whatyouwilllearn,
        ischecked: true);
    await coursedetailsmernDB.put(section.id, crcMern);
    courselistNotifiermern.value.clear();
    courselistNotifiermern.value.addAll(coursedetailsmernDB.values);
  }
}
