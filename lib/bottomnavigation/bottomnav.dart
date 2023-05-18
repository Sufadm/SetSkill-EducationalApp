import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:set_skill/account/account.dart';
import 'package:set_skill/blogs/blogs.dart';
import 'package:set_skill/homepage/homescreen.dart';
import '../mycourse/mycourse.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavState>(
      create: (_) => BottomNavState(),
      child: Consumer<BottomNavState>(
        builder: (context, bottomNavState, _) {
          return Scaffold(
            body: Center(
              child: bottomNavState.widgetOptions
                  .elementAt(bottomNavState.selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_filled),
                  label: 'My Course',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book),
                  label: 'Blogs',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Account',
                ),
              ],
              currentIndex: bottomNavState.selectedIndex,
              onTap: (index) {
                bottomNavState.onItemTapped(index);
              },
            ),
          );
        },
      ),
    );
  }
}

//provider class----------------------------------------------------------------
class BottomNavState extends ChangeNotifier {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MyCourse(),
    const Blogs(),
    const Account(),
  ];

  int get selectedIndex => _selectedIndex;
  List<Widget> get widgetOptions => _widgetOptions;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
