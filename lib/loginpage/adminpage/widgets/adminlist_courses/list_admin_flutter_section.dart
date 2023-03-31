import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/loginpage/adminpage/widgets/edit_fluttercourse/edit_flutter.dart';
import '../../../../database/database_flutter/db_function.dart';
import '../../../../homepage/widgets/floating_widgets.dart';
import 'overview_flutter.dart';

class ListSectionsFlutter extends StatefulWidget {
  const ListSectionsFlutter({super.key});

  @override
  State<ListSectionsFlutter> createState() => _ListSectionsFlutterState();
}

class _ListSectionsFlutterState extends State<ListSectionsFlutter> {
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
          ValueListenableBuilder(
            valueListenable: courselistNotifier,
            builder: (context, value, child) {
              if (value.isEmpty) {
                return Center(
                    child: Text(
                  'No sections available.',
                  style: GoogleFonts.lato(),
                ));
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      final data = value[index];
                      return Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                for (int i = 1; i <= 6; i++) {
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
                                            deletesection(index);
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
                    itemCount: value.length,
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }

  Section1OverviewAdmin sectionoverviewmwethod(CourseFlutter data, int index) {
    return Section1OverviewAdmin(
        time: data.time,
        overviewcoursename: data.overviewcoursename,
        beginner: data.beginner,
        whatyouwillearn: data.whatyouwilllearn,
        index: index);
  }

  popoutfuction(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
