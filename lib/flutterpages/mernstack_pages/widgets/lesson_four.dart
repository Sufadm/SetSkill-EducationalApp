import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../database/models/model_mern/data_model_mern.dart';
import '../../../loginpage/adminpage/overview_mern_1/overview_mern_1.dart';

SizedBox lesson4() {
  return SizedBox(
    width: double.infinity,
    height: 420,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Lesson 4',
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),
            Text(' Description',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(' Flutter Development is here to stay!\n',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            Text(
              'Welcome to The Complete Flutter App Development Course (The Worlds First Complete Dart and Flutter Course',
              style: GoogleFonts.lato(),
            ),
            Text(
              'Flutter is the new Cross-platform Mobile Development Framework created by Google, allowing developers to build Android and iOS Apps with one single codebase!',
              style: GoogleFonts.lato(),
            ),
            Text(
              'Flutter is the BEST way to create cross-platform apps that otherwise would require two distinct mobile development teams to create.',
              style: GoogleFonts.lato(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Why is Flutter a BIG Deal?\n',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            Text(
              'Flutter is a big deal because any developer (or anyone who wants to learn mobile development) can now build native Android and iOS apps with one codebase ONLY! This means, instead of having to learn Objective-C or Swift to build iOS apps, and Java, or Kotlin to build Android apps, you can now use Flutter Mobile Development Framework to build apps that run natively on both iOS and Android devices using the General-purpose Dart Programming Language',
              style: GoogleFonts.lato(),
            )
          ],
        ),
      ),
    ),
  );
}

Section1MernOverview section1mernoverview(CourseMern data, int index) {
  return Section1MernOverview(
    time: data.time,
    overviewcoursename: data.overviewcoursename,
    beginner: data.beginner,
    whatyouwillearn: data.whatyouwilllearn,
    index: index,
    text: 'Start Learning',
  );
}
