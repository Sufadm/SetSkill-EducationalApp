import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../models/fluttermodel/data_model.dart';
import '../models/model_mern/data_model_mern.dart';

ValueNotifier<List<CourseFlutter>> courselistNotifier = ValueNotifier([]);
int? length;
Future<void> addcourseflutter(CourseFlutter value) async {
  Box<CourseFlutter> coursedetailsDB =
      await Hive.openBox<CourseFlutter>('coursedetails');
  final courseid = await coursedetailsDB.add(value);
  coursedetailsDB.put(courseid, value);
  value.id = courseid;
  length = coursedetailsDB.length;
  courselistNotifier.notifyListeners();
  courselistNotifier.value.add(value);
}

Future<void> getallcourseFlutter() async {
  var appDocumentDir = await getApplicationDocumentsDirectory();
  Box<CourseFlutter> coursedetailsDB =
      await Hive.openBox<CourseFlutter>('coursedetails');
  courselistNotifier.value.clear();
  courselistNotifier.value.addAll(coursedetailsDB.values);
  courselistNotifier.notifyListeners();
}

Future<void> deletesection(int id) async {
  final sectionsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  await sectionsDB.deleteAt(id);
  length = sectionsDB.length;
  getallcourseFlutter();
}

Future<void> editcourseflutter(int id, CourseFlutter value) async {
  final flutterDB = await Hive.openBox<CourseFlutter>('coursedetails');
  flutterDB.putAt(id, value);
  getallcourseFlutter();
}

ValueNotifier<List<dynamic>> mergedCourse = ValueNotifier([]);
Future<void> merging() async {
  final sectionsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  final mernDB = await Hive.openBox<CourseMern>('coursedetailsmern');
  mergedCourse.value.clear();
  mergedCourse.value.addAll(sectionsDB.values);
  mergedCourse.value.addAll(mernDB.values);
}
