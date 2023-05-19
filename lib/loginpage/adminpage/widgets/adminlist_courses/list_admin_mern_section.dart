import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/loginpage/adminpage/widgets/edit_merncourse/edit_mern.dart';
import '../../../../database/database_mern/database_mern.dart';
import '../../../../homepage/widgets/floating_widgets.dart';
import '../../overview_mern_1/overview_mern_1.dart';

class ListSectionsMern extends StatelessWidget {
  const ListSectionsMern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButtonWidgetMern(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('ListSectionsMern'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10),
            child: Text('Lesson 2',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '   Curriculum',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          //! CONSUMER BUILDER FUNCTION---------------------------------------------
          Consumer<CourseFlutterMernProvider>(
            builder: (context, coursemern, child) {
              if (coursemern.courseMernprovider.isEmpty) {
                return Center(
                  child: SizedBox(
                    height: 400,
                    child: Lottie.network(
                      'https://assets1.lottiefiles.com/private_files/lf30_lkquf6qz.json',
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final data = coursemern.courseMernprovider[index];
                      return Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                for (int i = 1; i <= 6; i++) {
                                  if (data.sectionsmern == 'section $i') {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return section1overviewAdmin(data, index);
                                    }));
                                    break;
                                  }
                                }
                              },
                              icon: const Icon(Icons.play_arrow)),
                          Text(data.sectionsmern,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                          Container(
                              margin: const EdgeInsets.only(left: 200),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return EditMernCourse(
                                          overviewcoursename:
                                              data.overviewcoursename,
                                          time: data.time,
                                          beginner: data.beginner,
                                          whatyouwilllearn:
                                              data.whatyouwilllearn,
                                          sectionname: data.sectionsmern,
                                          coursename: data.coursename,
                                          logolink: data.logolink,
                                          youtubevedioid: data.youtubevideoid,
                                          blog: data.blog,
                                          index: index);
                                    }));
                                  },
                                  icon: const Icon(Icons.edit))),
                          IconButton(
                            onPressed: (() {
                              showDialog(
                                context: context,
                                builder: ((context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: AlertDialog(
                                      title: const Text(
                                        'Alert!',
                                        style: TextStyle(
                                            //color: Color.fromARGB(255, 8, 6, 6),
                                            ),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this section",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: (() {
                                            popoutfuction(context);
                                            Provider.of<CourseFlutterMernProvider>(
                                                    context,
                                                    listen: false)
                                                .deletesectionMern(index);
                                          }),
                                          child: const Text('Yes'),
                                        ),
                                        TextButton(
                                            onPressed: (() {
                                              popoutfuction(context);
                                            }),
                                            child: const Text('No'))
                                      ],
                                    ),
                                  );
                                }),
                              );
                            }),
                            icon: const Icon(
                              Icons.delete,
                              color: Color.fromARGB(255, 179, 33, 23),
                            ),
                            tooltip: 'Delete',
                          ),
                        ],
                      );
                    },
                    itemCount: coursemern.courseMernprovider.length,
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }

  Section1MernOverview section1overviewAdmin(CourseMern data, int index) {
    return Section1MernOverview(
      time: data.time,
      overviewcoursename: data.overviewcoursename,
      beginner: data.beginner,
      whatyouwillearn: data.whatyouwilllearn,
      index: index,
      text: 'NEXT',
    );
  }

  popoutfuction(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
