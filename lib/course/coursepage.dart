import 'package:flutter/material.dart';
import 'package:ibs_platform/login/login.dart';
import 'package:ibs_platform/theme/style.dart';

class CoursePage extends StatefulWidget {
  CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  bool outline = false;
  List<String> programmname = [
    "CODING",
    '3D MAX',
  ];
  List<String> time = [
    "8min,30sek ko'rildi",
    "3min,10sek ko'rildi",
  ];
  List<String> coursename = [
    'JAVASCRIPT\nBEGINNER',
    'OBJECT\nRENDER',
  ];
  List<String> lessonnumber = [
    '1-dars',
    '2-dars',
  ];
  List<String> nameuser = [
    'Shamsiddin ',
    'Rustam',
  ];
  List<String> coursevideo = [
    'JAVA SCRIPT BEGINNER\nVIDEO KURSI',
    'OBJECT RENDER\nVIDEO KURSI',
  ];
  // ignore: non_constant_identifier_names
  Widget get Listss => ListView.separated(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print(Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login())));
          },
          child: Container(
            height: 220,
            width: 240,
            margin: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Style.colors.white),
                  height: 12,
                  width: 43,
                  margin: EdgeInsets.only(left: 12, top: 30),
                  child: Center(
                    child: Text(
                      programmname[index],
                      style: Style.design,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 166,
                  margin: EdgeInsets.only(left: 12),
                  child: Text(
                    coursename[index],
                    style: Style.coursenamebig,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Text(
                    lessonnumber[index],
                    style: Style.username,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: 240,
                    color: Style.colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 12, top: 8),
                          height: 9,
                          width: 87,
                          child: Text(
                            nameuser[index],
                            style: Style.username11,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12, top: 9),
                          child: Text(
                            coursevideo[index],
                            style: Style.courcename,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 12),
                              child: Text(
                                time[index],
                                style: Style.timecourse,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                icon: Icon(outline
                                    ? Icons.bookmark
                                    : Icons.bookmark_outline),
                                onPressed: () {
                                  setState(() {
                                    outline = !outline;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Style.colors.fiolet),
          ),
        );
      },
      itemCount: programmname.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 16,
        );
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, top: 59),
              child: Text(
                'Salom muhsin',
                style: Style.hellouser,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
              child: Text(
                Style.texts.continues,
                style: Style.continuees,
              ),
            ),
            Container(height: 250, child: Listss),
            Container(
              margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
              child: Text(
                Style.texts.savedCourses,
                style: Style.continuees,
              ),
            ),
            Container(height: 250, child: Listss),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
                  child: Text(
                    Style.texts.allCourses,
                    style: Style.continuees,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.expand_more,
                      size: 36,
                    ))
              ],
            ),
            Container(
              height: 250,
              child: Listss,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
              child: Text(
                Style.texts.recommendedCourses,
                style: Style.continuees,
              ),
            ),
            Container(height: 250, child: Listss),
          ],
        ),
      ),
    );
  }
}
