import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';

import '../../../../database/database_mern/database_mern.dart';
import '../../../../zglobalconst/textform_widget.dart';

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
                OverviewTextFormWidget(overviewcoursename: _overviewcoursename),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TimeTextFormWidget(time: _time),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                BeginnerTextFormWidget(beginner: _beginner),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                WhatLeanWidget(whatyouwilllearn: _whatyouwilllearn),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Text(
                  'MERNSATCK COURSE DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SectionTextFormWidget(section: _section),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //--course name------
                CourseNameTextFormWidget(coursename: _coursename),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //--logo name-------
                LogoTextFormWidget(logolink: _logolink),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                //--youtube vedio id--
                YoutubeIdTextFormWidget(youtubevideoid: _youtubevideoid),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                BlogTextFormWidget(blog: _blog),

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
      Navigator.pop(context);
    }
  }
}
