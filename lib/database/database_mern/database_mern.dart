import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../models/model_mern/data_model_mern.dart';

//ValueNotifier<List<CourseMern>> courselistNotifiermern = ValueNotifier([]);
class CourseFlutterMernProvider extends ChangeNotifier {
  List<CourseMern> courseMernprovider = ([]);

  int? length;
  Future<void> addcoursemern(CourseMern value) async {
    Box<CourseMern> coursedetailsmernDB =
        await Hive.openBox<CourseMern>('coursedetailsmern');
    final courseid = await coursedetailsmernDB.add(value);
    coursedetailsmernDB.put(courseid, value);
    value.id = courseid;
    length = coursedetailsmernDB.length;
    courseMernprovider.add(value);
    notifyListeners();
  }

  Future<void> getallcoursemern() async {
    var appDocumentDir = await getApplicationDocumentsDirectory();
    Box<CourseMern> coursedetailsmernDB =
        await Hive.openBox<CourseMern>('coursedetailsmern');
    courseMernprovider.clear();
    courseMernprovider.addAll(coursedetailsmernDB.values);
    notifyListeners();
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
      courseMernprovider.clear();
      courseMernprovider.addAll(coursedetailsmernDB.values);
    }
  }
}
