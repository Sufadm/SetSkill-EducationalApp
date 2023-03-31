import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../../database/database_mern/database_mern.dart';
import '../../../../mernstack courses/allcourse_adminadd_mern.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';

class Section1MernOverviewAdmin extends StatelessWidget {
  final String time;
  final String overviewcoursename;
  final String beginner;
  final String whatyouwillearn;
  final int index;
  const Section1MernOverviewAdmin(
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
        backgroundColor: const Color(0xFF0D4B86),
        title: Text('Overview', style: GoogleFonts.lato()),
      ),
      body: ValueListenableBuilder(
        valueListenable: courselistNotifiermern,
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
                      'https://www.rlogical.com/wp-content/uploads/2020/12/MERN-Stack-considered-the-Best-for-Developing-Web-Apps.png',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 17),
                      child: Text(
                        overviewcoursename,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          const Icon(Icons.access_time),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
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
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text(
                            'Completion certificate',
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          const Icon(Icons.leaderboard),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
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
                      height: MediaQuery.of(context).size.height * 0.024,
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
                        trimLines: 18,
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
                      height: MediaQuery.of(context).size.height * 0.029,
                    ),
                    Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0D4B86),
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {
                              for (int i = 1; i <= 6; i++) {
                                if (data.sectionsmern == 'section $i') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return mernallcourse(data, index);
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

  MernAllCourse mernallcourse(CourseMern data, int index) {
    return MernAllCourse(
        coursename: data.coursename,
        logolink: data.logolink,
        youtubeid: data.youtubevideoid,
        blog: data.blog,
        index: index);
  }
}
