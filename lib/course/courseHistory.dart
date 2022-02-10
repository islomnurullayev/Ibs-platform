import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

import 'coursepage.dart';

class CourseHistory extends StatefulWidget {
  CourseHistory({Key? key}) : super(key: key);

  @override
  State<CourseHistory> createState() => _CourseHistoryState();
}

class _CourseHistoryState extends State<CourseHistory> {
  List<String> coursename1 = [
    'Javascript Beginner',
    'Logo branding pro',
    '3d max pro va\n obyektlarni renderlash',
    'Logo  branding Beginner',
    'Javascript Pro',
    'SMM Dizayn Pro',
    'Frontend beginner',
    '3d Max Interyer',
  ];
  List<String> creator1 = [
    'Adhamjon Nishonov',
    'Maraim Tursunov',
    'Maraim Tursunov',
    'Abdurashid Zaxurov',
    'Maraim Tursunov',
    'Abdurashid Zaxurov',
    'Abdurashid Zaxurov',
    'Maraim Tursunov',
  ];

  // ignore: non_constant_identifier_names
  Widget get Lists => SizedBox(
        height: 700,
        width: double.infinity,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(left: 24, top: 14),
                      child: Image.network(
                          'https://cdna.artstation.com/p/assets/images/images/013/807/642/large/taskin-altinel-night.jpg?1541168703'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 19),
                            child: Text(
                              coursename1[index],
                              style: Style.graficdizayner,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              creator1[index],
                              textAlign: TextAlign.start,
                              style: Style.username11,
                            ),
                          )
                        ]),
                  ],
                ),
              ],
            );
          },
          itemCount: coursename1.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 0);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.colors.white,
        appBar: AppBar(
          backgroundColor: Style.colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CoursePage()));
            },
            icon: Icon(
              Icons.west,
            ),
          ),
          title: Text(Style.texts.viewCourses),
        ),
        body: Lists);
  }
}
