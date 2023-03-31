import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:set_skill/database/database_mern/database_mern.dart';
import 'package:set_skill/database/database_mycourse/db_mycourse.dart';
import 'package:set_skill/loginpage/adminpage/overview_mern_1/widgets/widgets_mern.dart';

class Section1MernOverview extends StatefulWidget {
  final String time;
  final String overviewcoursename;
  final String beginner;
  final String whatyouwillearn;
  final int index;
  const Section1MernOverview(
      {super.key,
      required this.time,
      required this.overviewcoursename,
      required this.beginner,
      required this.whatyouwillearn,
      required this.index});

  @override
  State<Section1MernOverview> createState() => _Section1MernOverviewState();
}

class _Section1MernOverviewState extends State<Section1MernOverview> {
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
          final data = value[widget.index];
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
                      margin: const EdgeInsets.only(left: 25),
                      child: Text(
                        widget.overviewcoursename,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            textStyle:
                                const TextStyle(fontStyle: FontStyle.italic)),
                      ),
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
                            widget.time,
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    //!-----complete certificate widget----------------------------------------------------------------
                    completecertificate(),
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
                            widget.beginner,
                            style: GoogleFonts.lato(fontSize: 17),
                          )
                        ],
                      ),
                    ),

                    //read more content started-------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
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
                        widget.whatyouwillearn,
                        style: GoogleFonts.lato(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.039,
                      //height: 32,
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
                                  addingmern(data);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return mernallcourse(data, index);
                                  }));
                                }
                              }
                            },
                            child: Text(
                              'Start Learning',
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
}
