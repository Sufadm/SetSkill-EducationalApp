import '../../../../FlutterCourses/allcourse_adminadd.dart';
import '../../../../database/models/fluttermodel/data_model.dart';

FlutterAllCourse flutterallcourse(CourseFlutter data, int index) {
  return FlutterAllCourse(
      coursename: data.coursename,
      logolink: data.logolink,
      youtubeid: data.youtubevideoid,
      blog: data.blog,
      index: index);
}
