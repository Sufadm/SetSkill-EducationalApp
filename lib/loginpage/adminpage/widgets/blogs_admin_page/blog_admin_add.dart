import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/database_Blog/db_blog.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';
import 'package:set_skill/loginpage/adminpage/widgets/blogs_admin_page/blog_list.dart';

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
                TextFormField(
                  controller: _logolink,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Logolink required';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Logolink',
                      hintStyle: TextStyle()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name required';
                    } else {
                      return null;
                    }
                  },
                  controller: _name,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _topic,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Topic Required';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Topic',
                      hintStyle: TextStyle()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _imagelink,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' ImageLink Required';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ImageLink',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLines: 15,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Blogs Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _blog,
                  style: const TextStyle(
                      // color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      labelText: 'Blogs',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const BlogList();
      }));
    }
  }
}
