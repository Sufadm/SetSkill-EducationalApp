import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../database/database_Blog/db_blog.dart';
import 'blogspage/all_blogs.dart';
import 'package:lottie/lottie.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<BlogProvider>(
          builder: (context, blogs, child) {
            if (blogs.blogmodelprovider.isEmpty) {
              return Center(
                child: Lottie.network(
                  'https://assets1.lottiefiles.com/private_files/lf30_lkquf6qz.json',
                ),
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: blogs.blogmodelprovider.length,
                itemBuilder: (context, index) {
                  final data = blogs.blogmodelprovider[index];
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
