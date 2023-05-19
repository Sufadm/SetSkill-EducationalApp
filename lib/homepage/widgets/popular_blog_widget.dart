import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularBlogSection extends StatelessWidget {
  const PopularBlogSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'BlogHomePage'),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/download.jpeg',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Sufad M',
                          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Top Best Paying Jobs in\nTechnology in 2023',
                          style: GoogleFonts.lato()),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 7),
                      child: Text(
                          'Technology is defenitly one of the\nFastest growing careers out there.\nCareer in technology has several\nbenefits and high salary',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    //POPULAR BLOG ENDED-------------------------------
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
