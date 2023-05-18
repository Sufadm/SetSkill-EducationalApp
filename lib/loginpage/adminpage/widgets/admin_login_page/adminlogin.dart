import 'package:flutter/material.dart';

import '../login_choosecourse_page/choose_course.dart';

// class AdminLoginPage extends StatefulWidget {
//   const AdminLoginPage({super.key});

//   @override
//   State<AdminLoginPage> createState() => _AdminLoginPageState();
// }

// class _AdminLoginPageState extends State<AdminLoginPage> {
//   final formkey = GlobalKey<FormState>();
//   final email = TextEditingController();
//   final password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                   'images/360_F_207459754_XZ4VRclGSmux91GZ0ukm4oOPcF8wkN08.jpg'),
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//             child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(70.0),
//               child: Form(
//                 key: formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextFormField(
//                       controller: email,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Username cannot be Empty';
//                         } else {
//                           return null;
//                         }
//                       },
//                       style: const TextStyle(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                           fontStyle: FontStyle.italic),
//                       decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Username or Email',
//                           hintStyle: TextStyle(color: Colors.white)),
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.010,
//                     ),
//                     TextFormField(
//                       controller: password,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'password cannot be Empty';
//                         } else {
//                           return null;
//                         }
//                       },
//                       style: const TextStyle(
//                           color: Color.fromARGB(255, 255, 254, 254),
//                           fontStyle: FontStyle.italic),
//                       decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Password',
//                           hintStyle: TextStyle(color: Colors.white)),
//                       obscureText: true,
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.018,
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.040,
//                       child: ElevatedButton.icon(
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all(
//                                 const Color.fromARGB(255, 99, 103, 180)),
//                           ),
//                           onPressed: () {
//                             if (formkey.currentState!.validate()) {
//                               formkey.currentState!.save();
//                               final mail = email.text;
//                               final pass = password.text;
//                               if (mail == 'sufad' && pass == '12345') {
//                                 Navigator.pushReplacement(context,
//                                     MaterialPageRoute(builder: (context) {
//                                   return const ChooseCourse();
//                                 }));
//                               }
//                             } else {}
//                           },
//                           icon: const Icon(Icons.done),
//                           label: const Text(
//                             'LOGIN',
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )),
//       ),
//     );
//   }
// }
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final formkey = GlobalKey<FormState>();

  final email = TextEditingController();

  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 138, 146, 156),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40.0),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Username cannot be Empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'password cannot be Empty';
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            formkey.currentState!.save();
                            final mail = email.text;
                            final pass = password.text;
                            if (mail == 'sufad' && pass == '12345') {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChooseCourse();
                              }));
                            }
                          },
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Center(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
