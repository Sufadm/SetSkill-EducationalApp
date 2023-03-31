import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:set_skill/blogs_homepage/blog_home_page.dart';
import 'package:set_skill/account/about.dart';
import 'package:set_skill/account/privacy.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/flutterpages/lectures_flutter.dart';
import 'package:set_skill/flutterpages/mernstack_pages/lectures_mern.dart';
import 'package:set_skill/loginpage/adminpage/widgets/adminlist_courses/list_admin_mern_section.dart';
import 'package:set_skill/splash_screen/splash_screen.dart';
import 'database/database_Blog/db_blog.dart';
import 'database/database_flutter/db_function.dart';
import 'database/database_mern/database_mern.dart';
import 'loginpage/adminpage/widgets/adminedit_page/flutter_admin_editpage.dart';
import 'loginpage/adminpage/widgets/adminlist_courses/list_admin_flutter_section.dart';
import 'loginpage/adminpage/widgets/adminedit_page/mern_admin_editpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(BlogModelAdapter().typeId)) {
    Hive.registerAdapter(BlogModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CourseFlutterAdapter().typeId)) {
    Hive.registerAdapter(CourseFlutterAdapter());
  }
  if (!Hive.isAdapterRegistered(CourseMernAdapter().typeId)) {
    Hive.registerAdapter(CourseMernAdapter());
  }

  await getallcourseFlutter();
  await getallcoursemern();
  await getallblogs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Skill Set',
      home: const Splash_Screen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "BlogHomePage": (context) => const BlogHomePage(),
        'LecturesFlutter': (context) => const LecturesFlutter(),
        "lecturesmern": (context) => const MernLectures(),
        'privacypolicy': (context) => const Privacy(),
        'aboutskillset': (context) => const AboutSkillset(),
        "AdminAccessPage": (context) => const AdminAccessPage(),
        "MernAddCourse": (context) => const MernAddCourse(),
        "listsectionmern": (context) => const ListSectionsMern(),
        "ListSectionsFlutter": (context) => const ListSectionsFlutter(),
      },
    );
  }
}
