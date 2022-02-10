import 'package:flutter/material.dart';
import 'package:ibs_platform/course/coursepage.dart';
import 'package:ibs_platform/home/dashboard.dart';
import 'package:ibs_platform/theme/style.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = [
    DashboardController(),
    CoursePage(),
    Container(
      width: 100,
      height: 100,
      color: Style.colors.fiolet,
    ),
    Container(
      width: 100,
      height: 100,
      color: Style.colors.yellow,
    ),
    Container(
      width: 100,
      height: 100,
      color: Style.colors.grey,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20,
        fixedColor: Style.colors.primary,
        unselectedItemColor: Style.colors.white,
        backgroundColor: Style.colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: "Courses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "Work"),
          BottomNavigationBarItem(icon: Icon(Icons.video_settings), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
