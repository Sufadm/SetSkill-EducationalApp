import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogHomePage extends StatelessWidget {
  const BlogHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 10, 7, 186),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Text('BEST PAYING IT JOBS IN TECHNOLOGY        ',
                      style: GoogleFonts.ubuntu(fontSize: 18)),
                  SizedBox(
                    //height: 30,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                  Text(
                    '1. MOBILE APP DEVELOPER                          ',
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'The Newest mobile gadgets and software are\nrevolutionizing how we interact with one another, do\nbusiness, and get news and entertainment. As a result,\nmobile app development has emerged as one of the\nmost profitable and quickly expanding professions due\nto the widespread adoption of this innovative medium\nby businesses, consumers, programmers, and\ncreatives. Applicants have a massive advantage over\nthe competition for this role if they have a computer\nscience or information systems degree.',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //SPACE ADDED------
                  Text(
                    'The average annual income for mobile application           \ndevelopers in India is 5.0 Lakhs, with remunerations\nvarying from 1.8 Lakhs to 12.3 Lakhs',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  //SPACE ADDED------
                  Text(
                    '2. FULL STACK DEVELOPER                           ',
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'By 2023, there will be over 27.7 million developers \nglobally,making it one of the highest-paid IT careers!\nA full-stack developeris difficult to define, but the \nclosest definition would be someone who is fluent\nin both front-end and back-end development or has\ncompetence in every stage of the development\nprocess, from design to completion. ',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Text(
                    'Job Responsibilities of a Full-Stack Developer             \n',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1. Utilized technologies include MongoDB,\n2. Express.js, AngularJS, and Node.js.\n3. How to design and implement an AP\n4. Programming and scripting\n5. The fundamentals of website design\n6. Introduction to database technology\n\nA full stack developer may be responsible for building\nand constructing APIs using MEAN stack technologies\nensuring the resulting apps are responsive and\ncompliant with the applicable standards,testing\nthe codes integrity, and implementing data security\n\nThe average salary of Full stack Develepor is 4.0 Lakhs',
                    style: GoogleFonts.lato(fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
