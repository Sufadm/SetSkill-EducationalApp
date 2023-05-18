import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/blogs/blogspage/all_blogs.dart';
import 'package:set_skill/database/database_Blog/db_blog.dart';
import 'package:set_skill/loginpage/adminpage/widgets/edit_blog/edit_blog_page.dart';
import '../../../../homepage/widgets/floating_widgets.dart';

class BlogList extends StatelessWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButtonWidget(),
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
                          Container(
                            margin: const EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              data.name,
                              style:
                                  GoogleFonts.lato(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 4, top: 5),
                            child: Text(
                              data.topic,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 90),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return EditPageBlog(
                                          logolink: data.logolink,
                                          name: data.name,
                                          topic: data.topic,
                                          imagelink: data.imagelink,
                                          blogs: data.blogs,
                                          index: index,
                                        );
                                      }));
                                    },
                                    icon: const Icon(Icons.edit)),
                              ),
                              IconButton(
                                onPressed: (() {
                                  showDialog(
                                    context: context,
                                    builder: ((context) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: AlertDialog(
                                          title: const Text(
                                            'Alert!',
                                            style: TextStyle(),
                                          ),
                                          content: const Text(
                                            "Do you want to delete this Blog?",
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: (() {
                                                //popoutfuction(context);
                                                Provider.of<BlogProvider>(
                                                        context,
                                                        listen: false)
                                                    .deleteblogs(index);
                                                popoutfuction(context);
                                              }),
                                              child: const Text(
                                                'Yes',
                                                style: TextStyle(),
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: (() {
                                                  popoutfuction(context);
                                                  // popoutfuction(context);
                                                }),
                                                child: const Text('No'))
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                                }),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(255, 179, 33, 23),
                                ),
                                tooltip: 'Delete',
                              ),
                            ],
                          ),
                        ],
                      )),
                    );
                  },
                );
              }
            },
          )),
    );
  }

  popoutfuction(BuildContext context) {
    return Navigator.of(context).pop();
  }
}



// ValueListenableBuilder(
//             valueListenable: bloglistNotifier,
//             builder: (context, value, child) {
              // if (value.isEmpty) {
              //   return Center(
              //     child: Lottie.network(
              //       'https://assets1.lottiefiles.com/private_files/lf30_lkquf6qz.json',
              //     ),
              //   );
              // } else {
              //   return GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2),
              //     itemCount: value.length,
              //     itemBuilder: (context, index) {
              //       final data = value[index];
              //       return GestureDetector(
              //         onTap: () => Navigator.push(context,
              //             MaterialPageRoute(builder: (context) {
              //           return AllBlogs(
              //             blog: data.blogs,
              //             imagelink: data.imagelink,
              //           );
              //         })),
              //         child: Card(
              //             child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Image.network(
              //               data.logolink,
              //               height: MediaQuery.of(context).size.height * 0.11,
              //               width: double.infinity,
              //               fit: BoxFit.cover,
              //             ),
              //             Container(
              //               margin: const EdgeInsets.only(left: 5, top: 5),
              //               child: Text(
              //                 data.name,
              //                 style:
              //                     GoogleFonts.lato(fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Container(
              //               margin: const EdgeInsets.only(left: 4, top: 5),
              //               child: Text(
              //                 data.topic,
              //                 style: GoogleFonts.lato(
              //                     fontWeight: FontWeight.bold, fontSize: 12),
              //               ),
              //             ),
              //             Row(
              //               children: [
              //                 Container(
              //                   margin: const EdgeInsets.only(left: 90),
              //                   child: IconButton(
              //                       onPressed: () {
              //                         Navigator.push(context,
              //                             MaterialPageRoute(builder: (context) {
              //                           return EditPageBlog(
              //                             logolink: data.logolink,
              //                             name: data.name,
              //                             topic: data.topic,
              //                             imagelink: data.imagelink,
              //                             blogs: data.blogs,
              //                             index: index,
              //                           );
              //                         }));
              //                       },
              //                       icon: const Icon(Icons.edit)),
              //                 ),
              //                 IconButton(
              //                   onPressed: (() {
              //                     showDialog(
              //                       context: context,
              //                       builder: ((context) {
              //                         return Padding(
              //                           padding: const EdgeInsets.all(20.0),
              //                           child: AlertDialog(
              //                             title: const Text(
              //                               'Alert!',
              //                               style: TextStyle(),
              //                             ),
              //                             content: const Text(
              //                               "Do you want to delete this Blog?",
              //                             ),
              //                             actions: [
              //                               TextButton(
              //                                 onPressed: (() {
              //                                   //popoutfuction(context);
              //                                   deleteblogs(index);
              //                                   popoutfuction(context);
              //                                 }),
              //                                 child: const Text(
              //                                   'Yes',
              //                                   style: TextStyle(),
              //                                 ),
              //                               ),
              //                               TextButton(
              //                                   onPressed: (() {
              //                                     popoutfuction(context);
              //                                     // popoutfuction(context);
              //                                   }),
              //                                   child: const Text('No'))
              //                             ],
              //                           ),
              //                         );
              //                       }),
              //                     );
              //                   }),
              //                   icon: const Icon(
              //                     Icons.delete,
              //                     color: Color.fromARGB(255, 179, 33, 23),
              //                   ),
              //                   tooltip: 'Delete',
              //                 ),
              //               ],
              //             ),
              //           ],
              //         )),
              //       );
              //     },
              //   );
              // }
          //   },
          // )