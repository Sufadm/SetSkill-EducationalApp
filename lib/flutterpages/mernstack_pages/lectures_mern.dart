import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/flutterpages/mernstack_pages/widgets/lesson_two.dart';
import 'package:set_skill/loginpage/adminpage/overview_mern_1/overview_mern_1.dart';
import '../widgets/lesson_four_widget.dart';

class MernLectures extends StatefulWidget {
  const MernLectures({super.key});

  @override
  State<MernLectures> createState() => _MernLecturesState();
}

class _MernLecturesState extends State<MernLectures> {
  bool _showDescription = false;
  bool _showDescription1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D4B86),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/MERN-Stack-considered-the-Best-for-Developing-Web-Apps.png',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.017,
              ),
              Text(
                '      MERN STACK',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),

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
                          'MERN stack is a technology stack that is used for building web applications. It stands for MongoDB, Express, React, and Node.js. Each component of the stack is a specialized technology that is used for a specific part of the web application development process.',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //---------LESSON1 INTRODUCTION end-------------------------------
              //---------LESSON2 curriculum start-------------------------------
              const LessonTwoMern(),
              //---------LESSON2 curriculum end---------------------------------
              //---------LESSON3 requirments start------------------------------
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
                          '1. Text editor: You will need a text editor to write and edit code. Popular options include Visual Studio Code, Sublime Text, and Atom.\n 2. Node.js: MERN stack uses Node.js as the server-side JavaScript runtime. You will need to install Node.js on your computer to run and build MERN stack applications.\n3. MongoDB: MERN stack uses MongoDB as the database. You will need to install MongoDB on your computer to interact with the database.\n4. Git: MERN stack development requires version control. Git is a popular version control system, and you will need to install Git on your computer to manage your code.\n',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //-------lesson 3 requirnments ended----------------------------
              const Lesson4()
            ],
          ),
        ),
      ),
    );
  }
}

Section1MernOverview section1mernoverview(CourseMern data, int index) {
  return Section1MernOverview(
    time: data.time,
    overviewcoursename: data.overviewcoursename,
    beginner: data.beginner,
    whatyouwillearn: data.whatyouwilllearn,
    index: index,
    text: 'Start Learning',
  );
}
