import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column mernmycourse() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          child: Text(
            'MERNSTACK',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 9),
        child: Text(
            'MERN stands for MongoDB\nExpress, React, Node,after the\nfour key technologies that make\nup the stack MongoDB\ndocument database.',
            style: GoogleFonts.lato(
              fontSize: 14,
            )),
      ),
      //POPULAR BLOG ENDED-------------------------------
    ],
  );
}

Column fluttermycourse() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          child: Text(
            'FLUTTER',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 9),
        child: Text(
            'Flutter is an open source \nframework by Google for \nbuilding beautiful natively\ncompiled, multiplatform \napplicationsfrom a single\ncodebase.',
            style: GoogleFonts.lato(
              fontSize: 14,
            )),
      ),
      //POPULAR BLOG ENDED-------------------------------
    ],
  );
}
