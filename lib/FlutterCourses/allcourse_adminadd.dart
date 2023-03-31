import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FlutterAllCourse extends StatefulWidget {
  final String coursename;
  final String logolink;
  final String youtubeid;
  final String blog;
  final int index;
  const FlutterAllCourse(
      {super.key,
      required this.coursename,
      required this.logolink,
      required this.youtubeid,
      required this.blog,
      required this.index});

  @override
  State<FlutterAllCourse> createState() => _FlutterAllCourseState();
}

class _FlutterAllCourseState extends State<FlutterAllCourse> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeid,
      flags: const YoutubePlayerFlags(
        forceHD: false,
        autoPlay: false,
        hideThumbnail: false,
        disableDragSeek: false,
        loop: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.landscape) {
        return Scaffold(
          body: youtubeHierarchy(),
        );
      } else {
        return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(
                        child: SizedBox(
                          width: double.infinity,
                          // height: 100,
                          height: MediaQuery.of(context).size.height * 0.11,

                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 17, top: 17),
                                    child: Text(
                                      widget.coursename,
                                      style: GoogleFonts.robotoMono(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 175),
                                  child: Image.network(widget.logolink),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    youtubeHierarchy(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.coursename,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 7),
                      child: Text(
                        widget.blog,
                        style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }
    });
  }

  youtubeHierarchy() {
    return Column(
      children: [
        Align(
          child: FittedBox(
            fit: BoxFit.fill,
            child: YoutubePlayer(
              aspectRatio: 16 / 9,
              controller: _controller,
            ),
          ),
        ),
      ],
    );
  }
}
