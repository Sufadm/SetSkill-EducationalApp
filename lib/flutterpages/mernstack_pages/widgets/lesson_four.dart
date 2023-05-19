import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../database/models/model_mern/data_model_mern.dart';
import '../../../loginpage/adminpage/overview_mern_1/overview_mern_1.dart';

SizedBox lesson4() {
  return SizedBox(
    width: double.infinity,
    height: 670,
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
            Text(' Mern Stack Development is here to stay!\n',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            Text(
              'We built the bestselling React course on SkillSet - this course now allows you to take your React knowledge to the next level and build fullstack web apps based on React, NodeJS, MongoDB and Express!',
              style: GoogleFonts.lato(),
            ),
            Text(
              'Building fullstack applications (i.e. frontend + backend) with the MERN stack is very popular - in this course, you will learn it from scratch at the example of a complete project!!',
              style: GoogleFonts.lato(),
            ),
            Text(
              'MERN stands for MongoDB, Express.js, React.js and Node.js - and combined, these four technologies allow you to build amazing web applications.',
              style: GoogleFonts.lato(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Why is MernStack a BIG Deal?\n',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            Text(
              'MERN stack is considered a big deal in web development because it offers a number of advantages over traditional web development stacks. Some of the key reasons why MERN stack is a big deal are:\n1. All JavaScript stack: With MERN stack, you can use JavaScript for both the front-end and back-end development. This means that you can use a single programming language throughout the entire stack, making it easier to learn, develop, and maintain web applications.\n2. Scalability: MERN stack is highly scalable, and can handle large volumes of data and high levels of traffic. MongoDBs document-based storage system is particularly effective at handling large datasets.\n3. Real-time data exchange: MERN stack allows for real-time data exchange, which is essential for many modern web applications. This is made possible by the use of Node.js and the ability to implement WebSocket communication.\n4. Modular and reusable components: MERN stack makes it easy to create modular and reusable components, which can save time and reduce development costs.',
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
