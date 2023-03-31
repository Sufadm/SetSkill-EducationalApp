import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/bottomnavigation/bottomnav.dart';
import 'package:set_skill/loginpage/adminpage/widgets/admin_login_page/adminlogin.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.pwc.be/en/FY21/images/2col-industrialcyberresponse.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              SizedBox(
                //height: 220,
                height: MediaQuery.of(context).size.height * 0.22,
              ),
              SizedBox(
                // height: 55,
                height: MediaQuery.of(context).size.height * 0.055,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        // height: 50,
                        //width: 50,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.5,

                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                              // NEW
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Bottom_Nav();
                              }));
                            },
                            child: Text(
                              'Browse',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.005,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 0, 0),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const AdminLoginPage();
                              }));
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
