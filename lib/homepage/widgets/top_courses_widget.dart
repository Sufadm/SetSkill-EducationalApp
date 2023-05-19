import 'package:flutter/material.dart';

class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: MediaQuery.of(context).size.height * 0.180,
            width: MediaQuery.of(context).size.width * 0.47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/guide-to-everyhing-laptop-640-1656580338.jpg',
                  fit: BoxFit.cover,
                  // height: 100,
                  height: MediaQuery.of(context).size.height * 0.11,
                ),
                const ListTile(
                  title: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'FLUTTER',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: MediaQuery.of(context).size.height * 0.180,
            width: MediaQuery.of(context).size.width * 0.47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/What_is_the_MERN_stack_and_how_do_I_use_it.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.113,
                ),
                const ListTile(
                  title: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'MERNSTACK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
