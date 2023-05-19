import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../database/database_flutter/db_function.dart';
import 'lesson_four_widget.dart';

class Lesson2SectionFlutter extends StatelessWidget {
  const Lesson2SectionFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, top: 10),
              child: Text('Lesson 2',
                  style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Text(
              '   Curriculum',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Consumer<CourseFlutterProvider>(
              builder: (context, coursemern, child) {
                if (coursemern.courseflutterprovider.isEmpty) {
                  return Center(
                    child: SizedBox(
                      height: 190,
                      child: Lottie.network(
                        'https://assets1.lottiefiles.com/private_files/lf30_lkquf6qz.json',
                      ),
                    ),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: ((context, index) {
                        final data = coursemern.courseflutterprovider[index];
                        return Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  for (int i = 1; i <= 6; i++) {
                                    if (data.sections == 'section $i') {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return section1overview(data, index);
                                      }));
                                      break;
                                    }
                                  }
                                },
                                icon: const Icon(Icons.play_arrow)),
                            Text(data.sections,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold)),
                          ],
                        );
                      }),
                      itemCount: coursemern.courseflutterprovider.length,
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
