import 'package:flutter/material.dart';
import 'package:progress/screens/calender_screen.dart';
import 'package:progress/screens/home_screen.dart';
import 'package:progress/screens/settings_screen.dart';
import 'package:progress/screens/target_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPageIndex == 0
                  ? 'assets/icons/filled/Home.png'
                  : 'assets/icons/outlined/Home.png',
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPageIndex == 1
                  ? 'assets/icons/filled/Calendar.png'
                  : 'assets/icons/outlined/Calendar.png',
              width: 24,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPageIndex == 2
                  ? 'assets/icons/filled/Target.png'
                  : 'assets/icons/outlined/Target.png',
              width: 24,
            ),
            label: 'Target',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPageIndex == 3
                  ? 'assets/icons/filled/Settings.png'
                  : 'assets/icons/outlined/Settings.png',
              width: 24,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: [
        const HomeScreen(),
        const CalenderScreen(),
        const TargetScreen(),
        const SettingsScreen(),
      ][currentPageIndex],
    );
  }
}
