import 'package:flutter/material.dart';
import 'package:flutter_application_8/company.dart';
import 'package:flutter_application_8/digitalPage.dart';
import 'package:flutter_application_8/feedOne.dart';
import 'package:flutter_application_8/profile.dart';
import 'package:flutter_application_8/savedPage.dart';
import 'package:flutter_application_8/trending.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int currentIndex = 0;
  var pages = [
    MyFeedOne(),
    MyTrendPage(),
    SavedPage(),
    TheCompany(),
    MyProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1E3167),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_rounded),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/girlHd.jpg"),
              radius: 12,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
