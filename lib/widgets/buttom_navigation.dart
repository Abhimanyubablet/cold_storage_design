import 'package:flutter/material.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/explore_screen.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/home_screen.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/status_screen_data/status_screen.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/account_screen.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    // ExploreScreen(),
    StatusScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      // Set the background color here

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Update the selected index when a tab is pressed
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.opacity_rounded),
          //   label: 'Explore',
          // ),

          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: 'Status',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),


        ],
        selectedItemColor: Color(0xFF0D4619),
      ),

    );
  }
}
