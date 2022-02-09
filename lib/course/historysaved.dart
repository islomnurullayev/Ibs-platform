import 'package:flutter/material.dart';
import 'package:ibs_platform/course/coursepage.dart';
import 'package:ibs_platform/theme/style.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key, l}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<String> courseTitle = [
    '3d max pro va\n obyektlarni renderlash',
    'Frontend beginner ',
    'Javascript pro',
    'Logo  branding pro',
  ];
  List<String> creator = [
    'Adhamjon Nishonov',
    'Maraim Tursunov',
    'Maraim Tursunov',
    'Abdurashid Zaxurov',
  ];
  List<String> time = [
    '3s',
    '9s',
    '3s',
    '12s',
  ];
  List<String> viewing = [
    '1.2m',
    '4m',
    '1.2m',
    '7m',
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
                      height: 53,
                      width: 94,
                      margin: EdgeInsets.only(left: 24, top: 27),
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
                            margin: EdgeInsets.only(top: 29),
                            child: Text(
                              courseTitle[index],
                              style: Style.graficdizayner,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              creator[index],
                              textAlign: TextAlign.start,
                              style: Style.username11,
                            ),
                          )
                        ]),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Container(
                        height: 16,
                        width: 16,
                        margin: EdgeInsets.only(left: 24),
                        child: Icon(Icons.schedule)),
                    SizedBox(width: 10),
                    Container(
                      height: 16,
                      width: 18,
                      child: Text(
                        time[index],
                        style: Style.indenim,
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                        height: 16,
                        width: 16,
                        child: Icon(Icons.person_outline)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 16,
                      width: 40,
                      child: Text(
                        viewing[index],
                        style: Style.indenim,
                      ),
                    )
                  ],
                )
              ],
            );
          },
          itemCount: courseTitle.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 2,
            );
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
          title: Text(Style.texts.savedCourses),
        ),
        body: Lists);
  }
}
