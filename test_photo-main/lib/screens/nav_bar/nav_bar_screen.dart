import 'package:flutter/material.dart';
import 'package:test_photo/theme/my_colors.dart';

import 'nav_bar_items/home/home_screen.dart';
import 'nav_bar_items/photo_camera/photo_camera_screen.dart';
import 'nav_bar_items/profile/profile_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key key}) : super(key: key);

  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PhotoCameraScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyColors.white,
        items: [
          BottomNavigationBarItem(
              backgroundColor: MyColors.white,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: MyColors.white,
              icon: Icon(Icons.photo_camera_outlined),
              activeIcon: Icon(Icons.photo_camera),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: MyColors.white,
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        showUnselectedLabels: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
