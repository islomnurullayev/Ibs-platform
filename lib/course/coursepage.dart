import 'package:flutter/material.dart';
import 'package:ibs_platform/course.dart';
import 'package:ibs_platform/course/courseHistory.dart';
import 'package:ibs_platform/course/historysaved.dart';
import 'package:ibs_platform/portfolio/coding%20challanges.dart';
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
  List<String> cheatsheettopics = [
    "Learn JavaScript",
    "Learn HTML",
    "Learn Python",
  ];
  List<String> projecttopics = [
    "Builder company CRM",
    "Builder company CRM",
    "Builder company CRM",
  ];
  List<String> codechallangetopics = [
    "Prime Number Finder",
    "Find Xth Number In Order",
    "Balanced Binary Search",
    "Prime Number Finder",
  ];

  List<Widget> get cards => [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UsefulResources(
                      title: "Code Challenges",
                      caption: "lists",
                      color: Style.colors.blue,
                      level: 'beginner',
                      topic: codechallangetopics,
                      texts:
                          "Haqiqiy texnik intervyularga asoslangan kod\nsinovlari bilan bilimingizni sinab ko'ring.\nIsh qidirish uchun mashq qiling - yoki o'yin-kulgi\nuchun. Agar o'ta olmasangiz, tashvishlanmang.\nO'tishingizga yordam beradigan to'g'ri\nkurslarni tavsiya qilamiz.",
                    )));
          },
          child: Container(
            child: Center(
              child: Text(
                "coding-\nchallanges",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Style.colors.white),
              ),
            ),
            width: 174,
            height: 98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Style.colors.fiolet),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => UsefulResources(
                  title: "Projects",
                  caption: "Portfolio Project",
                  color: Style.colors.blue,
                  level: 'Beginner / Python',
                  topic: projecttopics,
                  texts:
                      "Haqiqiy texnik intervyularga asoslangan kod\nsinovlari bilan bilimingizni sinab ko'ring.\nIsh qidirish uchun mashq qiling - yoki o'yin-kulgi\nuchun. Agar o'ta olmasangiz, tashvishlanmang.\nO'tishingizga yordam beradigan to'g'ri\nkurslarni tavsiya qilamiz.",
                ),
              ),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "portfolio-\nprojects",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Style.colors.white),
              ),
            ),
            width: 174,
            height: 98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Style.colors.primary),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UsefulResources(
                      title: "Cheatsheets",
                      caption: "Cheatsheets",
                      color: Style.colors.lightGreen,
                      level: '',
                      topic: cheatsheettopics,
                      texts:
                          "Haqiqiy texnik intervyularga asoslangan kod\nsinovlari bilan bilimingizni sinab ko'ring.\nIsh qidirish uchun mashq qiling - yoki o'yin-kulgi\nuchun. Agar o'ta olmasangiz, tashvishlanmang.\nO'tishingizga yordam beradigan to'g'ri\nkurslarni tavsiya qilamiz.",
                    )));
          },
          child: Container(
            child: Center(
              child: Text(
                "cheat-\nsheets",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Style.colors.white),
              ),
            ),
            width: 174,
            height: 98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Style.colors.pink),
          ),
        ),
      ];

  Widget get list => ListView.separated(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Course(),
            ));
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
                Expanded(
                  child: Container(
                    width: 166,
                    margin: EdgeInsets.only(left: 12),
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        coursename[index],
                        style: Style.coursenamebig,
                      ),
                    ),
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
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12, top: 9),
                            child: Text(
                              coursevideo[index],
                              style: Style.courcename,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10, left: 12),
                                child: Text(
                                  time[index],
                                  style: Style.timecourse,
                                ),
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
              color: Style.colors.fiolet,
            ),
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
          padding: EdgeInsets.only(bottom: 20),
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, top: 59),
              child: Text(
                'Salom muhsin',
                style: Style.hellouser,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
                  child: Text(
                    Style.texts.continues,
                    style: Style.continuees,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CourseHistory(
                            caption: Style.texts.viewCourses,
                          ),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            Container(height: 250, child: list),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
                  child: Text(
                    Style.texts.savedCourses,
                    style: Style.continuees,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HistoryPage()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            Container(height: 250, child: list),
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
              child: list,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
              child: Text(
                Style.texts.recommendedCourses,
                style: Style.continuees,
              ),
            ),
            Container(height: 250, child: list),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                Style.texts.benefitResources,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 36),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: 24),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return cards[index];
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 12,
                      ),
                  itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
