import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../database/models/model_mern/data_model_mern.dart';
import '../../../../mernstack courses/allcourse_adminadd_mern.dart';

MernAllCourse mernallcourse(CourseMern data, int index) {
  return MernAllCourse(
      coursename: data.coursename,
      logolink: data.logolink,
      youtubeid: data.youtubevideoid,
      blog: data.blog,
      index: index);
}

Container completecertificate() {
  return Container(
    margin: const EdgeInsets.only(left: 15),
    child: Row(
      children: [
        const Icon(Icons.library_books),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Completion certificate',
          style: GoogleFonts.lato(fontSize: 17),
        )
      ],
    ),
  );
}
