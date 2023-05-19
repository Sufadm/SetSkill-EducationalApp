import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/database/models/blogmodel/blog_model.dart';

import '../../../../database/database_Blog/db_blog.dart';
import '../../../../zglobalconst/blogstextform.dart';

class EditPageBlog extends StatefulWidget {
  final String logolink;
  final String name;
  final String topic;
  final String imagelink;
  final String blogs;
  final int index;
  const EditPageBlog(
      {super.key,
      required this.logolink,
      required this.name,
      required this.topic,
      required this.imagelink,
      required this.blogs,
      required this.index});

  @override
  State<EditPageBlog> createState() => _EditPageBlogState();
}

class _EditPageBlogState extends State<EditPageBlog> {
  TextEditingController _logolink = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _topic = TextEditingController();
  TextEditingController _imagelink = TextEditingController();
  TextEditingController _blogs = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    _name = TextEditingController(text: widget.name);
    _topic = TextEditingController(text: widget.topic);
    _imagelink = TextEditingController(text: widget.imagelink);
    _blogs = TextEditingController(text: widget.blogs);
    _logolink = TextEditingController(text: widget.logolink);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Blog Page',
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
                BlogTextFormWidget(blog: _blogs),
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
                        editblogs(context);
                        Navigator.of(context).pop();
                      } else {
                        return;
                      }
                    },
                    child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> editblogs(ctx) async {
    final blogs = BlogModel(
        logolink: _logolink.text,
        imagelink: _imagelink.text,
        blogs: _blogs.text,
        name: _name.text,
        topic: _topic.text);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(milliseconds: 500),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(30),
        backgroundColor: Color.fromARGB(255, 2, 3, 3),
        content: Text(
          'Saved Successfully',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
    Provider.of<BlogProvider>(context, listen: false)
        .editblogsBottom(widget.index, blogs);
  }
}
