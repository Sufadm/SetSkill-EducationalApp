import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/zzglobalconst/textform_widget.dart';
import 'package:set_skill/loginpage/adminpage/widgets/adminlist_courses/list_admin_flutter_section.dart';
import '../../../../database/database_flutter/db_function.dart';

class AdminAccessPage extends StatefulWidget {
  const AdminAccessPage({super.key});

  @override
  State<AdminAccessPage> createState() => _AdminAccessPageState();
}

class _AdminAccessPageState extends State<AdminAccessPage> {
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
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
        title: const Text(
          ' Add Flutter course ',
          style: TextStyle(color: Colors.black),
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
                //Overviewtextformfield----started------
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
                SectionTextFormWidget(section: _section),
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
                YoutubeIdTextFormWidget(youtubevideoid: _youtubevideoid),
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
                        addcourse();
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

  Future<void> addcourse() async {
    final name = _coursename.text.trim();
    final logo = _logolink.text.trim();
    final videolink = _youtubevideoid.text.trim();
    final blg = _blog.text.trim();
    final sectionflutter = _section.text.trim();
    final overviewcoursename = _overviewcoursename.text.trim();
    final time = _time.text.trim();
    final beginner = _beginner.text.trim();
    final whatyouwilllearn = _whatyouwilllearn.text.trim();

    if (name.isEmpty |
        logo.isEmpty |
        videolink.isEmpty |
        blg.isEmpty |
        sectionflutter.isEmpty |
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
      final model1 = CourseFlutter(
        overviewcoursename: overviewcoursename,
        time: time,
        whatyouwilllearn: whatyouwilllearn,
        beginner: beginner,
        coursename: name,
        logolink: logo,
        youtubevideoid: videolink,
        blog: blg,
        sections: sectionflutter,
        ischecked: false,
      );

      Provider.of<CourseFlutterProvider>(context, listen: false)
          .addcourseflutter(model1);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const ListSectionsFlutter();
      }));
    }
  }
}
