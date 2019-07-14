import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:dark_fluttergram/screens/home.dart';
import 'package:dark_fluttergram/screens/search.dart';
import 'package:dark_fluttergram/screens/notifications.dart';
import 'package:dark_fluttergram/screens/profile.dart';
import 'package:dark_fluttergram/screens/takePicture.dart';

class CustomBottomTabs extends StatefulWidget {
  @override
  CustomBottomTabsState createState() {
    return new CustomBottomTabsState();
  }
}

class CustomBottomTabsState extends State<CustomBottomTabs> {
  int _index = 0;

  var pages = [
    HomeScreen(),
    SearchScreen(),
    TakePictureScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onItemTapped,
        iconSize: 32.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.home, color: Colors.white),
            icon: Icon(MdiIcons.homeOutline, color: Colors.grey),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: Colors.white),
            icon: Icon(Icons.search, color: Colors.grey),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.plusBox, color: Colors.white),
            icon: Icon(MdiIcons.plusBoxOutline, color: Colors.grey),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.heart, color: Colors.white),
            icon: Icon(MdiIcons.heartOutline, color: Colors.grey),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.account, color: Colors.white),
            icon: Icon(MdiIcons.accountOutline, color: Colors.grey),
            title: Container(height: 0),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

}
