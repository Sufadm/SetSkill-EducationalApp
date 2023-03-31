import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/database_mern/database_mern.dart';
import 'package:set_skill/mycourse/widgets.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ValueListenableBuilder(
                          valueListenable: courselistNotifier,
                          builder: (context, value, child) {
                            int count = 0;
                            for (var element in value) {
                              if (element.ischecked) {
                                count++;
                              }
                            }
                            return CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 10.0,
                              animation: true,
                              percent: count / value.length,
                              center: Text(
                                '${(count / value.length * 100).toStringAsFixed(0)}%', // display the percentage as an integer
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              backgroundColor: Colors.grey,
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.redAccent,
                            );
                          }),
                      fluttermycourse()
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Background color
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'LecturesFlutter');
                  },
                  child: const Text('START LEARNING'))),

          //--------------card 2=======================================================
          Card(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: courselistNotifiermern,
                        builder: (context, value, child) {
                          int count = 0;
                          for (var element in value) {
                            if (element.ischecked) {
                              count++;
                            }
                          }
                          return CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 10.0,
                            animation: true,
                            percent: count / value.length,
                            center: Text(
                              '${(count / value.length * 100).toStringAsFixed(0)}% ', // display the percentage as an integer
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            backgroundColor: Colors.grey,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor:
                                const Color.fromARGB(156, 6, 255, 68),
                          );
                        },
                      ),
                      mernmycourse()
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Background color
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'lecturesmern');
                  },
                  child: const Text('START LEARNING'))),
        ],
      ),
    );
  }
}
