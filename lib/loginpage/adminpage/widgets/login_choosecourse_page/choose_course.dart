import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/loginpage/adminpage/widgets/adminlist_courses/list_admin_flutter_section.dart';
import 'package:set_skill/loginpage/adminpage/widgets/adminlist_courses/list_admin_mern_section.dart';
import '../../../../homepage/widgets/floating_widgets.dart';

class ChooseCourse extends StatelessWidget {
  const ChooseCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButtonWidgetBlog(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              // height: 270
              height: MediaQuery.of(context).size.height * 0.34,
            ),
            Text(
              'Which course want to Add',
              style: GoogleFonts.lato(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Flutter button
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: ((context, animation, secondaryAnimation) =>
                          const ListSectionsFlutter()),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ));
                  },
                  child: const Text(
                    'FLUTTER',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.017,
                ),
                //!Mernstack button
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, 'MernAddCourse');
                      //Navigator.pushNamed(context, 'listsectionmern');
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder:
                            ((context, animation, secondaryAnimation) =>
                                const ListSectionsMern()),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var begin = const Offset(1.0, 0.0);
                          var end = Offset.zero;
                          var curve = Curves.ease;
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ));
                    },
                    child: const Text(
                      'MERNSTACK',
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
