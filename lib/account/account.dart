import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Account extends StatelessWidget {
  Future<void> share() async {
    await FlutterShare.share(
        title: ' Skillset',
        text: 'Skillset',
        linkUrl:
            'https://play.google.com/store/apps/details?id=in.brototype.set_skill',
        chooserTitle: 'Example Chooser Title');
  }

  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 6, 6),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 45, 45),
      ),
      body: Padding(
        padding: const EdgeInsets.all(27.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () => share(),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  leading: (const Icon(Icons.share)),
                  title: Text(
                    'Share app',
                    style: GoogleFonts.robotoFlex(),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'privacypolicy'),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  leading: const Icon((Icons.privacy_tip_outlined)),
                  title: Text(
                    'Privacy Policy',
                    style: GoogleFonts.robotoFlex(),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'aboutskillset'),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  leading: (const Icon(Icons.info_outline)),
                  title: Text(
                    'About SkillSet',
                    style: GoogleFonts.robotoFlex(),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (() async {
                const url =
                    'mailto:sufadzan1@gmail.com?subject=Help me&body=How Can I Help You';
                Uri uri = Uri.parse(url);

                await launchUrl(uri);
              }),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  leading: const Icon((Icons.feedback)),
                  title: Text(
                    'Feedback',
                    style: GoogleFonts.robotoFlex(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
