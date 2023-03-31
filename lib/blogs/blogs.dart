import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../database/database_Blog/db_blog.dart';
import 'blogspage/all_blogs.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder(
          valueListenable: bloglistNotifier,
          builder: (context, value, child) {
            if (value.isEmpty) {
              return Center(
                  child: Text(
                'No Blogs available.',
                style: GoogleFonts.lato(),
              ));
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: value.length,
                itemBuilder: (context, index) {
                  final data = value[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AllBlogs(
                        blog: data.blogs,
                        imagelink: data.imagelink,
                      );
                    })),
                    child: Card(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          data.logolink,
                          height: MediaQuery.of(context).size.height * 0.11,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: Text(
                            data.name,
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.002,
                        ),
                        Center(
                          child: Text(
                            data.topic,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ],
                    )),
                  );
                },
              );
            }
          },
        ),
      ),
    ));
  }
}
