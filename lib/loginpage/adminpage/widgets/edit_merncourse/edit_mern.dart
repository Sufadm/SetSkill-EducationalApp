import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';

import '../../../../database/database_mern/database_mern.dart';

class EditMernCourse extends StatefulWidget {
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
  const EditMernCourse(
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
  State<EditMernCourse> createState() => _EditMernCourseState();
}

class _EditMernCourseState extends State<EditMernCourse> {
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
        title: const Text('Edit Mern'),
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
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Overview course name',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
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
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Time',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
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
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Beginner',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
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
                      //color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'What you will learn',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Text(
                  'FLUTTER COURSE DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Section is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _sectionname,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Section Name',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
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
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Course Name',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
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
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Logo Link',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Youtube vedio id is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _youtubevedioid,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'youtube vedio id',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
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
                      //  color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Blog',
                      alignLabelWithHint: true,
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
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
                          editMerndetails(context);
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

  Future<void> editMerndetails(
    ctx,
  ) async {
    final courseflutter = CourseMern(
        coursename: _coursename.text,
        logolink: _logolink.text,
        youtubevideoid: _youtubevedioid.text,
        blog: _blog.text,
        sectionsmern: _sectionname.text,
        beginner: _beginner.text,
        overviewcoursename: _overviewcoursename.text,
        time: _time.text,
        whatyouwilllearn: _whatyouwilllearn.text,
        ischecked: false);
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
    editmerncourse(widget.index, courseflutter);
  }
}
