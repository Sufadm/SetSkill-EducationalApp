import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../models/fluttermodel/data_model.dart';
import '../models/model_mern/data_model_mern.dart';

class CourseFlutterProvider extends ChangeNotifier {
  List<CourseFlutter> courseflutterprovider = ([]);
  int? length;

  Future<void> addcourseflutter(CourseFlutter value) async {
    Box<CourseFlutter> coursedetailsDB =
        await Hive.openBox<CourseFlutter>('coursedetails');
    final courseid = await coursedetailsDB.add(value);
    coursedetailsDB.put(courseid, value);
    value.id = courseid;
    length = coursedetailsDB.length;
    courseflutterprovider.add(value);
    print('added');
    notifyListeners();
  }

  Future<void> getallcourseFlutter() async {
    var appDocumentDir = await getApplicationDocumentsDirectory();
    Box<CourseFlutter> coursedetailsDB =
        await Hive.openBox<CourseFlutter>('coursedetails');
    courseflutterprovider.clear();
    courseflutterprovider.addAll(coursedetailsDB.values);
    notifyListeners();
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
      courseflutterprovider.clear();
      courseflutterprovider.addAll(coursedetailsDB.values);
    }
  }
}

class SearchProvider extends ChangeNotifier {
  List<dynamic> mergedCourse = ([]);
  Future<void> merging() async {
    final sectionsDB = await Hive.openBox<CourseFlutter>('coursedetails');
    final mernDB = await Hive.openBox<CourseMern>('coursedetailsmern');
    mergedCourse.clear();
    mergedCourse.addAll(sectionsDB.values);
    mergedCourse.addAll(mernDB.values);
  }
}
