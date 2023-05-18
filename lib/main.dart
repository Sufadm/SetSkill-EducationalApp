import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_Blog/db_blog.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/database_mern/database_mern.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/splash_screen/splash_screen.dart';
import 'account/about.dart';
import 'account/privacy.dart';
import 'blogs_homepage/blog_home_page.dart';
import 'flutterpages/lectures_flutter.dart';
import 'flutterpages/mernstack_pages/lectures_mern.dart';
import 'loginpage/adminpage/widgets/adminedit_page/flutter_admin_editpage.dart';
import 'loginpage/adminpage/widgets/adminedit_page/mern_admin_editpage.dart';
import 'loginpage/adminpage/widgets/adminlist_courses/list_admin_flutter_section.dart';
import 'loginpage/adminpage/widgets/adminlist_courses/list_admin_mern_section.dart';

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

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CourseFlutterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CourseFlutterMernProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BlogProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        )
      ],
      child: MaterialApp(
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        title: 'Skill Set',
        home: const SplashScreen(),
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
      ),
    );
  }
}
