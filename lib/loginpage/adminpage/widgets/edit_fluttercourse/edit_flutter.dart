import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import '../../../../database/database_flutter/db_function.dart';
import '../../../../zglobalconst/textform_widget.dart';

class EditFlutter extends StatefulWidget {
  final String overviewcoursename;
  final String time;
  final String beginner;
  final String whatyouwilllearn;
  final String sectionname;
  final String coursename;
  final String logolink;
  final String youtubevedioid;
  final String blog;
  final int index;
  const EditFlutter(
      {super.key,
      required this.overviewcoursename,
      required this.time,
      required this.beginner,
      required this.whatyouwilllearn,
      required this.sectionname,
      required this.coursename,
      required this.logolink,
      required this.youtubevedioid,
      required this.blog,
      required this.index});

  @override
  State<EditFlutter> createState() => _EditFlutterState();
}

class _EditFlutterState extends State<EditFlutter> {
  TextEditingController _overviewcoursename = TextEditingController();
  TextEditingController _time = TextEditingController();
  TextEditingController _beginner = TextEditingController();
  TextEditingController _whatyouwilllearn = TextEditingController();
  TextEditingController _sectionname = TextEditingController();
  TextEditingController _coursename = TextEditingController();
  TextEditingController _logolink = TextEditingController();
  TextEditingController _youtubevedioid = TextEditingController();
  TextEditingController _blog = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    _overviewcoursename =
        TextEditingController(text: widget.overviewcoursename);
    _beginner = TextEditingController(text: widget.beginner);
    _blog = TextEditingController(text: widget.blog);
    _coursename = TextEditingController(text: widget.coursename);
    _logolink = TextEditingController(text: widget.logolink);
    _sectionname = TextEditingController(text: widget.sectionname);
    _whatyouwilllearn = TextEditingController(text: widget.whatyouwilllearn);
    _youtubevedioid = TextEditingController(text: widget.youtubevedioid);
    _time = TextEditingController(text: widget.time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Flutter Course',
          style: GoogleFonts.lato(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'FLUTTER OVERVIEW DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //!Overviewtextformfield----started------
                OverviewTextFormWidget(overviewcoursename: _overviewcoursename),
                const SizedBox(
                  height: 10,
                ),
                TimeTextFormWidget(time: _time),

                const SizedBox(height: 10),
                BeginnerTextFormWidget(beginner: _beginner),
                SizedBox(
                  // height: 10,
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                WhatLeanWidget(whatyouwilllearn: _whatyouwilllearn),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Text(
                  'FLUTTER COURSE DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SectionTextFormWidget(section: _sectionname),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                CourseNameTextFormWidget(coursename: _coursename),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                LogoTextFormWidget(logolink: _logolink),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                YoutubeIdTextFormWidget(youtubevideoid: _youtubevedioid),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                const SizedBox(
                  height: 10,
                ),
                BlogTextFormWidget(blog: _blog),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.0),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0))))),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          editFlutterdetails(context);
                          Navigator.of(context).pop();
                        } else {
                          return;
                        }
                      },
                      child: const Text('Save')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> editFlutterdetails(
    ctx,
  ) async {
    final courseflutter = CourseFlutter(
      ischecked: false,
      coursename: _coursename.text,
      logolink: _logolink.text,
      youtubevideoid: _youtubevedioid.text,
      blog: _blog.text,
      sections: _sectionname.text,
      beginner: _beginner.text,
      overviewcoursename: _overviewcoursename.text,
      time: _time.text,
      whatyouwilllearn: _whatyouwilllearn.text,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(milliseconds: 500),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(30),
        backgroundColor: Color.fromARGB(255, 2, 3, 3),
        content: Text(
          'Saved Successfully',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
    Provider.of<CourseFlutterProvider>(context, listen: false)
        .editcourseflutter(widget.index, courseflutter);
  }
}
