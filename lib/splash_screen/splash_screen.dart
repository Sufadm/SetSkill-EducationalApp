import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_Blog/db_blog.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/database_mern/database_mern.dart';

import '../loginpage/adminpage/widgets/login_choosecourse_page/firstpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHomescreen();
    super.initState();
  }

  navigateToHomescreen() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Firstpage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<CourseFlutterProvider>(context).getallcourseFlutter();
    Provider.of<CourseFlutterMernProvider>(context).getallcoursemern();
    Provider.of<BlogProvider>(context).getallblogs();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 228),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(''), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/setskill_logo-removebg-preview.png",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child:
                    LoadingAnimationWidget.beat(color: Colors.black, size: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
