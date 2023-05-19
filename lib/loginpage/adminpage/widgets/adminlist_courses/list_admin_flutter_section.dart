import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/loginpage/adminpage/widgets/edit_fluttercourse/edit_flutter.dart';
import '../../../../database/database_flutter/db_function.dart';
import '../../../../homepage/widgets/floating_widgets.dart';
import '../../overviewflutter_1/overview_section1.dart';

class ListSectionsFlutter extends StatelessWidget {
  const ListSectionsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButtonWidgetFlutter(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'Section list of flutter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10),
            child: Text('Lesson 2',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.004,
          ),
          Text(
            '   Curriculum',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Consumer<CourseFlutterProvider>(
            builder: (context, courseflutter, child) {
              if (courseflutter.courseflutterprovider.isEmpty) {
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
                    itemBuilder: ((context, index) {
                      final data = courseflutter.courseflutterprovider[index];
                      return Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                for (int i = 1; i <= 10; i++) {
                                  if (data.sections == 'section $i') {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return sectionoverviewmwethod(
                                          data, index);
                                    }));
                                    break;
                                  }
                                }
                              },
                              icon: const Icon(Icons.play_arrow)),
                          Text(data.sections,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                          Container(
                              margin: const EdgeInsets.only(left: 200),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return EditFlutter(
                                        overviewcoursename:
                                            data.overviewcoursename,
                                        time: data.time,
                                        beginner: data.beginner,
                                        whatyouwilllearn: data.whatyouwilllearn,
                                        sectionname: data.sections,
                                        coursename: data.coursename,
                                        logolink: data.logolink,
                                        youtubevedioid: data.youtubevideoid,
                                        blog: data.blog,
                                        index: index,
                                      );
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
                                            // color: Color.fromARGB(255, 8, 6, 6),
                                            ),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this section",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: (() {
                                            popoutfuction(context);
                                            Provider.of<CourseFlutterProvider>(
                                                    context,
                                                    listen: false)
                                                .deletesection(index);
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
                    }),
                    itemCount: courseflutter.courseflutterprovider.length,
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }

  Section1Overview sectionoverviewmwethod(CourseFlutter data, int index) {
    return Section1Overview(
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
