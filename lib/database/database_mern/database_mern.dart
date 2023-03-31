import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../models/model_mern/data_model_mern.dart';

ValueNotifier<List<CourseMern>> courselistNotifiermern = ValueNotifier([]);
int? length;
Future<void> addcoursemern(CourseMern value) async {
  Box<CourseMern> coursedetailsmernDB =
      await Hive.openBox<CourseMern>('coursedetailsmern');
  final courseid = await coursedetailsmernDB.add(value);
  coursedetailsmernDB.put(courseid, value);
  value.id = courseid;
  length = coursedetailsmernDB.length;
  courselistNotifiermern.notifyListeners();
  courselistNotifiermern.value.add(value);
}

Future<void> getallcoursemern() async {
  var appDocumentDir = await getApplicationDocumentsDirectory();
  Box<CourseMern> coursedetailsmernDB =
      await Hive.openBox<CourseMern>('coursedetailsmern');
  courselistNotifiermern.value.clear();
  courselistNotifiermern.value.addAll(coursedetailsmernDB.values);
  courselistNotifiermern.notifyListeners();
}

Future<void> deletesectionMern(int id) async {
  final sectionsmernDB = await Hive.openBox<CourseMern>('coursedetailsmern');
  await sectionsmernDB.deleteAt(id);
  length = sectionsmernDB.length;
  getallcoursemern();
}

Future<void> editmerncourse(int id, CourseMern value) async {
  final mernDB = await Hive.openBox<CourseMern>('coursedetailsmern');
  mernDB.putAt(id, value);
  getallcoursemern();
}
