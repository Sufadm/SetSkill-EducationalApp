import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/loginpage/adminpage/widgets/blogs_admin_page/blog_admin_add.dart';

import '../../loginpage/adminpage/widgets/blogs_admin_page/blog_list.dart';
import '../../loginpage/adminpage/widgets/adminedit_page/flutter_admin_editpage.dart';
import '../../loginpage/adminpage/widgets/adminedit_page/mern_admin_editpage.dart';

const double fabSize = 56;

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 450),
      openBuilder: (context, _) => const BlogsAdmin(),
      closedShape: const CircleBorder(),
      closedColor: Theme.of(context).primaryColor,
      closedBuilder: (context, openContainer) => Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        height: fabSize,
        width: fabSize,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class FloatingActionButtonWidgetFlutter extends StatelessWidget {
  const FloatingActionButtonWidgetFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 450),
      openBuilder: (context, _) => const AdminAccessPage(),
      closedShape: const CircleBorder(),
      closedColor: Theme.of(context).primaryColor,
      closedBuilder: (context, openContainer) => Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Colors.amberAccent),
        height: fabSize,
        width: fabSize,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

class FloatingActionButtonWidgetMern extends StatelessWidget {
  const FloatingActionButtonWidgetMern({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 450),
      openBuilder: (context, _) => const MernAddCourse(),
      closedShape: const CircleBorder(),
      closedColor: Theme.of(context).primaryColor,
      closedBuilder: (context, openContainer) => Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        height: fabSize,
        width: fabSize,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

class FloatingActionButtonWidgetBlog extends StatelessWidget {
  const FloatingActionButtonWidgetBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 450),
      openBuilder: (context, _) => const BlogList(),
      closedShape: const CircleBorder(),
      closedColor: Theme.of(context).primaryColor,
      closedBuilder: (context, openContainer) => Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Colors.amberAccent),
        height: fabSize,
        width: fabSize,
        child: Center(
          child: Text(
            '  BLOGS  ',
            style: GoogleFonts.lato(
                color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
