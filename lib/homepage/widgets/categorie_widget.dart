import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'LecturesFlutter');
          },
          child: Card(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * 0.076,
              width: MediaQuery.of(context).size.width * 0.47,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'FLUTTER',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'All Courses',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Image.asset(
                    'images/0_ObJbOfJnx4QIPUq9.png',
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'lecturesmern');
          },
          child: Card(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * 0.076,
              width: MediaQuery.of(context).size.width * 0.47,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'MERNSTACK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: const Text(
                          'All Courses',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    'images/images (1).jpeg',
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
