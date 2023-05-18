import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/loginpage/adminpage/widgets/adminlist_courses/list_admin_mern_section.dart';

import '../../../../database/database_mern/database_mern.dart';

class MernAddCourse extends StatefulWidget {
  const MernAddCourse({super.key});

  @override
  State<MernAddCourse> createState() => _MernAddCourseState();
}

class _MernAddCourseState extends State<MernAddCourse> {
  final _coursename = TextEditingController();
  final _logolink = TextEditingController();
  final _youtubevideoid = TextEditingController();
  final _blog = TextEditingController();
  final _section = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _overviewcoursename = TextEditingController();
  final _time = TextEditingController();
  final _beginner = TextEditingController();
  final _whatyouwilllearn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Add Mern course'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'MERN COURSE DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //!---section name----------------------------------------
                TextFormField(
                  controller: _overviewcoursename,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Overview course required';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      //color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Overview course name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Time required';
                    } else {
                      return null;
                    }
                  },
                  controller: _time,
                  style: const TextStyle(
                      //  color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Time',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TextFormField(
                  controller: _beginner,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Beginner is Required';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Beginner',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TextFormField(
                  controller: _whatyouwilllearn,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' What you will learn is Required';
                    } else {
                      return null;
                    }
                  },
                  maxLines: 15,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      labelText: 'What you will learn',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Text(
                  'MERNSATCK COURSE DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Section is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _section,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Section Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //!--course name------
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Coursename is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _coursename,
                  style: const TextStyle(
                      //  color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Course Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //!--logo name-------
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Logo is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _logolink,
                  style: const TextStyle(
                      //  color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Logo link',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //!--youtube vedio id--
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Youtube vedio id is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _youtubevideoid,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'youtube vedio id',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Blog is Required';
                    } else {
                      return null;
                    }
                  },
                  maxLines: 15,
                  controller: _blog,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Blog',
                      alignLabelWithHint: true,
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addcourseMern();
                      } else {
                        return;
                      }
                    },
                    child: const Text('Add Course')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addcourseMern() async {
    final name = _coursename.text.trim();
    final logo = _logolink.text.trim();
    final videolink = _youtubevideoid.text.trim();
    final blg = _blog.text.trim();
    final sectionsmern = _section.text.trim();
    final overviewcoursename = _overviewcoursename.text.trim();
    final time = _time.text.trim();
    final beginner = _beginner.text.trim();
    final whatyouwilllearn = _whatyouwilllearn.text.trim();

    if (name.isEmpty |
        logo.isEmpty |
        videolink.isEmpty |
        blg.isEmpty |
        sectionsmern.isEmpty |
        overviewcoursename.isEmpty |
        time.isEmpty |
        beginner.isEmpty |
        whatyouwilllearn.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            duration: Duration(seconds: 1),
            content: Text(
              'Please fill all the fields',
            )),
      );
    } else {
      final model2 = CourseMern(
          overviewcoursename: overviewcoursename,
          time: time,
          whatyouwilllearn: whatyouwilllearn,
          beginner: beginner,
          coursename: name,
          logolink: logo,
          youtubevideoid: videolink,
          blog: blg,
          sectionsmern: sectionsmern,
          ischecked: false);
      Provider.of<CourseFlutterMernProvider>(context, listen: false)
          .addcoursemern(model2);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const ListSectionsMern();
      }));
    }
  }
}
