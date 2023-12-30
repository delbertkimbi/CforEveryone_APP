import 'package:c_foreverybody/const/appcolors.dart';
import 'package:c_foreverybody/pages/bugs.dart';
import 'package:c_foreverybody/pages/homepage.dart';
import 'package:c_foreverybody/pages/people.dart';
import 'package:c_foreverybody/pages/solutions.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BugsPage(),
    SolutionsPage(),
    PeoplesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors().maincolor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[800]!,
              gap: 8,
              activeColor: AppColors().maincolor,
              iconSize: 22,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              color: AppColors().maincolor,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.bug,
                  text: 'Bugs',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'SoluX',
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.users,
                  text: 'People',
                  iconColor: Colors.white,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
