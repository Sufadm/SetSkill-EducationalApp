import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSkillset extends StatelessWidget {
  const AboutSkillset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'Skill Set is an online platform featuring 10+ video courses and blogs taught by expert instructors.taken courses in anything from programming like mernstack and flutter. join the 100k of students who are mastering new skills,advancing their careers,and exploring new in Skillset.',
              style: GoogleFonts.robotoMono(
                  fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Text('Developed by Sufad M\n\n          Version 1.0'),
          ],
        ),
      ),
    );
  }
}
