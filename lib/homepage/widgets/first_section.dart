import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/zzglobalconst/constants.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: darkBlueColor),
      height: MediaQuery.of(context).size.height * 0.19,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //child container 1 ----------
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                child: const Text(
                  'The technology you use impreses no one. \n The experience you create with it is everything',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
              //child container 2------------
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                child: const Text(
                  'Lets get started with our \nCourses',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
              //child container 3-----------
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  'Lets get Started',
                  style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Image.asset('images/logo.png',
              height: MediaQuery.of(context).size.height * 0.12)
        ],
      ),
    );
  }
}
