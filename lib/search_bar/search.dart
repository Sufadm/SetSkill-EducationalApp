import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import '../FlutterCourses/allcourse_adminadd.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: mergedCourse,
      builder: (context, value, child) {
        final filteredList = value.where((data) =>
            data.coursename.toLowerCase().contains(query.toLowerCase().trim()));
        return filteredList.isEmpty
            ? const Center(
                child: Text('No results found'),
              )
            : ListView.separated(
                itemCount: filteredList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final data = filteredList.elementAt(index);
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) {
                                return FlutterAllCourse(
                                  coursename: data.coursename,
                                  blog: data.blog,
                                  logolink: data.logolink,
                                  youtubeid: data.youtubevideoid,
                                  index: index,
                                );
                              }),
                            ),
                          );
                        },
                        title: Text(data.coursename),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data.logolink),
                        ),
                      ),
                    ],
                  );
                },
              );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: mergedCourse,
      builder: (context, value, child) {
        final filteredList = value.where((data) =>
            data.coursename.toLowerCase().contains(query.toLowerCase().trim()));
        return filteredList.isEmpty
            ? Center(
                child: Text(
                  'No results found',
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              )
            : ListView.separated(
                itemCount: filteredList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final data = filteredList.elementAt(index);
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) {
                                return FlutterAllCourse(
                                  coursename: data.coursename,
                                  blog: data.blog,
                                  logolink: data.logolink,
                                  youtubeid: data.youtubevideoid,
                                  index: index,
                                );
                              }),
                            ),
                          );
                        },
                        title: Text(data.coursename),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data.logolink),
                        ),
                      ),
                    ],
                  );
                },
              );
      },
    );
  }
}
