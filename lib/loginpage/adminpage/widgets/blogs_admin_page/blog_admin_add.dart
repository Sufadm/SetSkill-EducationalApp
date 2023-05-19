import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_Blog/db_blog.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';

import '../../../../zglobalconst/blogstextform.dart';

class BlogsAdmin extends StatefulWidget {
  const BlogsAdmin({super.key});

  @override
  State<BlogsAdmin> createState() => _BlogsAdminState();
}

class _BlogsAdminState extends State<BlogsAdmin> {
  final _logolink = TextEditingController();

  final _topic = TextEditingController();

  final _name = TextEditingController();

  final _imagelink = TextEditingController();

  final _blog = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          ' Add Blogs ',
          style: GoogleFonts.lato(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'BLOG DETAILS\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LogoLinkTextFormWidget(logolink: _logolink),
                const SizedBox(
                  height: 10,
                ),
                NameTextFormWidget(name: _name),
                const SizedBox(height: 10),
                TopicTextFormWidget(topic: _topic),
                const SizedBox(
                  height: 10,
                ),
                ImageLinkTextFormWidget(imagelink: _imagelink),
                const SizedBox(
                  height: 10,
                ),
                BlogTextFormWidget(blog: _blog),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addblog();
                      } else {
                        return;
                      }
                    },
                    child: const Text('Add Blog')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addblog() async {
    final logolink = _logolink.text.trim();
    final name = _name.text.trim();
    final topic = _topic.text.trim();
    final imagelink = _imagelink.text.trim();
    final blog = _blog.text.trim();
    if (logolink.isEmpty |
        name.isEmpty |
        topic.isEmpty |
        imagelink.isEmpty |
        blog.isEmpty) {
      return;
    } else {
      final model1 = BlogModel(
          logolink: logolink,
          imagelink: imagelink,
          blogs: blog,
          name: name,
          topic: topic);
      Provider.of<BlogProvider>(context, listen: false).addblogs(model1);
      Navigator.pop(context);
    }
  }
}
