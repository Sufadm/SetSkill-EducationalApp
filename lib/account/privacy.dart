import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        //backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
                'https://blog.ipleaders.in/wp-content/uploads/2020/10/bluestar_webbox_privacy-policy_1024x512_1218_V1_PRESS.jpg'),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'This Privacy Policy was last updated on July 14, 2022.\n\nThank you for joining skillset. We at skillset (skillset, we, us) respect your privacy and want you to understand how we collect, use, and share data about you. This Privacy Policy covers our data  collection practices and describes your rights regarding your personal data.\n\nUnless we link to a different policy or state otherwise, this Privacy Policy applies when you visit or use the skillset and CorpU websites, mobile applications, APIs, or related services (the “Services”). It also applies to prospective customers of our business and enterprise products.\n\nBy using the Services, you agree to the terms of this Privacy Policy. You shouldn’t use the Services if you don’t agree with this Privacy Policy or any other agreement that governs your use of the Services.',
              style: GoogleFonts.robotoMono(),
            )
          ],
        ),
      ),
    );
  }
}
