import 'package:flutter/material.dart';
import 'package:ibs_platform/proekt.dart';
import 'package:ibs_platform/theme/style.dart';

import 'SMM course.dart';
import 'muloqot.dart';

class TabController1 extends StatefulWidget {
  TabController1({Key? key}) : super(key: key);

  @override
  State<TabController1> createState() => _TabController1State();
}

class _TabController1State extends State<TabController1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Style.colors.pink,
              height: 219,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: 70, left: 24),
                child: Text(
                  'SMM DESIGN\nBEGINNER',
                  style: Style.smmCourse,
                ),
              ),
            ),
            Container(
              color: Style.colors.black,
              child: TabBar(
                indicatorColor: Style.colors.primary,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    child: Text(
                      "Darslar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Proyekt",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Muloqot",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SmmCourse(),
                  ProektPage(),
                  MuloqotPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
