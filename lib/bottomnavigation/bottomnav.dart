import 'package:flutter/material.dart';
import 'package:set_skill/account/account.dart';
import 'package:set_skill/blogs/blogs.dart';
import 'package:set_skill/homepage/homescreen.dart';
import '../mycourse/mycourse.dart';

// ignore: camel_case_types
class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

// ignore: camel_case_types
class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MyCourse(),
    const Blogs(),
    const Account(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_filled), label: 'My course'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Blogs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
