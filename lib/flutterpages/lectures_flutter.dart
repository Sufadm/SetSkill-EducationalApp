import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/flutterpages/mernstack_pages/widgets/lesson_four.dart';
import 'package:set_skill/flutterpages/widgets/lesson_two_widget.dart';

class LecturesFlutter extends StatefulWidget {
  const LecturesFlutter({super.key});
  @override
  State<LecturesFlutter> createState() => _LecturesFlutterState();
}

class _LecturesFlutterState extends State<LecturesFlutter> {
  bool _showDescription = false;
  bool _showDescription1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 41, 159, 198),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/flutter-for-enterprise-app-development.jpeg',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '     MOBILE APP DEVELOPMENT',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),

              //---------LESSON1 INTRODUCTION START------------------------------------------
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Lesson 1\nIntroduction',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showDescription = !_showDescription;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              _showDescription
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              size: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_showDescription)
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Learn To Build & Program Beautiful, Fast, And Native-Quality Apps With Our Flutter Course. Find the right instructor for you. Choose from many topics, skill levels, and languages. Real-world experts',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //--------LESSON1 INTRODUCTION END---------------------------
              //--------LESSON 2 STARTED-------------------
              const Lesson2SectionFlutter(),
              //LESSON 2 END---------------------------------------------------------------------
              //LESSON 3 STARTED----------------------
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text('Lesson 3\nRequiements',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showDescription1 = !_showDescription1;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              _showDescription1
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              size: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_showDescription1)
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '1. Basic programming language will help but is not a must-have\n 2. You can use either Windows,macOS or Linux for Android app development-iOS aps can be built on macOS though\n3. NO prior iOS or Android development experience is required\n4. NO prior Flutter or Dart experience is required - this course starts at zero',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //LESSON 3 ENDED------------------------------------------------------------------------
              //lesson4 started==============================================================
              lesson4()
            ],
          ),
        ),
      ),
    );
  }
}

































 // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'DartBasics');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 1',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'FlutterBasics');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 2',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'Widgets');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 3',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'DataBase');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 4',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),