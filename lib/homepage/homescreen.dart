import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/homepage/widgets/first_section.dart';
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
            //main container end------------------------------------------------------------------------------------------------------------------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),

            //!categories started================================================================================================================================

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
            Row(
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
            ),
            //!categories END===========================================================
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            //TOP COURSE STARTED-------------------------
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

            Row(
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
                        Image.network(
                          'https://img.business.com/w/700/aHR0cHM6Ly9pbWFnZXMuYnVzaW5lc3NuZXdzZGFpbHkuY29tL2FwcC91cGxvYWRzLzIwMjIvMDQvMDQwNzQ1NTMvMTU1NDI0NDAxMC5qcGVn',
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
                        Image.network(
                          'https://blog.nitsantech.com/fileadmin/ns_theme_ns2019/blog/_live/What_is_the_MERN_stack_and_how_do_I_use_it_/What_is_the_MERN_stack_and_how_do_I_use_it.jpg',
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
            ),
            //TOP COURSES ENDED-------
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            //POPULAR BLOG STARTED--------------------------------------
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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'BlogHomePage'),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/photo_1517336714731_489689fd1ca8_9.jpeg',
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
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Top Best Paying Jobs in\nTechnology in 2023',
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
            )
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
