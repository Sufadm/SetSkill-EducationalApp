import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../../FlutterCourses/allcourse_adminadd.dart';
import '../../../../database/database_flutter/db_function.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';

class Section1OverviewAdmin extends StatelessWidget {
  final String time;
  final String overviewcoursename;
  final String beginner;
  final String whatyouwillearn;
  final int index;
  const Section1OverviewAdmin(
      {super.key,
      required this.time,
      required this.overviewcoursename,
      required this.beginner,
      required this.whatyouwillearn,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 159, 198),
        title: Text('Overview', style: GoogleFonts.lato()),
      ),
      body: ValueListenableBuilder(
        valueListenable: courselistNotifier,
        builder: (context, value, child) {
          final data = value[index];
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://www.mindinventory.com/blog/wp-content/uploads/2022/09/flutter-for-enterprise-app-development.jpeg',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 23),
                      child: Text(
                        overviewcoursename,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.006),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          const Icon(Icons.access_time),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.010,
                          ),
                          Text(
                            time,
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          const Icon(Icons.library_books),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.010,
                          ),
                          Text(
                            'Completion certificate',
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      // height: 15,
                      height: MediaQuery.of(context).size.height * 0.018,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          const Icon(Icons.leaderboard),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.017,
                          ),
                          Text(
                            beginner,
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),

                    //read more content started-------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.022,
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      child: Text(
                        'What You will Learn ?',
                        style: GoogleFonts.robotoFlex(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 14),
                      child: ReadMoreText(
                        trimLines: 15,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Readmore',
                        moreStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        lessStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        trimExpandedText: 'Read less',
                        whatyouwillearn,
                        style: GoogleFonts.lato(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.019,
                    ),
                    Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 41, 159, 198),
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {
                              for (int i = 1; i <= 6; i++) {
                                if (data.sections == 'section $i') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return flutterallcourse(data, index);
                                  }));
                                }
                              }
                            },
                            child: Text(
                              'NEXT',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )))
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  FlutterAllCourse flutterallcourse(CourseFlutter data, int index) {
    return FlutterAllCourse(
        coursename: data.coursename,
        logolink: data.logolink,
        youtubeid: data.youtubevideoid,
        blog: data.blog,
        index: index);
  }
}
