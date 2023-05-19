import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/homepage/widgets/categorie_widget.dart';
import 'package:set_skill/homepage/widgets/first_section.dart';
import 'package:set_skill/homepage/widgets/popular_blog_widget.dart';
import 'package:set_skill/homepage/widgets/top_courses_widget.dart';
import '../search_bar/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          greeting(),
          style: GoogleFonts.lato(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(
              onPressed: () {
                Provider.of<SearchProvider>(context, listen: false).merging();
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first  Main Box container-----------------------------------------
            const FirstSection(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),

            //categories started================================================

            Container(
                margin: const EdgeInsets.only(left: 13),
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            const CategoriesSection(),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            //TOP COURSE STARTED------------------------------------------------
            Container(
                margin: const EdgeInsets.only(left: 13),
                alignment: Alignment.topLeft,
                child: Text(
                  'Top courses',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),

            const TopCoursesSection(),
            //TOP COURSES ENDED-------------------------------------------------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            //POPULAR BLOG STARTED----------------------------------------------
            Container(
                margin: const EdgeInsets.only(left: 13),
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Blogs',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const PopularBlogSection()
          ],
        ),
      ),
    );
  }

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    return 'Evening';
  }
}
