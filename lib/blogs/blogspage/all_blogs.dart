import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllBlogs extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final imagelink;
  // ignore: prefer_typing_uninitialized_variables
  final blog;
  const AllBlogs({super.key, required this.imagelink, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(imagelink),
              SizedBox(
                // height: 10,
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                blog,
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
