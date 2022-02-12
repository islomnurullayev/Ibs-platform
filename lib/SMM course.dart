import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class SmmCourse extends StatefulWidget {
  const SmmCourse({Key? key}) : super(key: key);

  @override
  State<SmmCourse> createState() => _SmmCourseState();
}

int pagesIndex = 0;

// ignore: non_constant_identifier_names
List<String> SmmLesson = [
  "SMM intro\n3:34",
  "SMM asoslari\n10:54",
  "SMM intro\n3:34",
  "SMM kodimiz\n12:31",
  "SMM o'zgaruvchilar va konstantalar\n11:12",
  "Objectlar\n8:49",
  "Orifmetik operatorlar\n19:48",
  "Mantiqiy operatorlar\n12:45",
  "Amaliy mashg'ulot\n5:24",
];

class _SmmCourseState extends State<SmmCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            height: 42,
            width: double.infinity,
            child: Text(
              'SMM Beginner\nVideo Kursi',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 24, top: 12),
                  height: 24,
                  width: 24,
                  child: Center(
                      child: Text(
                    'M',
                    style: Style.avatar,
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Style.colors.black)),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Maraim Tuxtasunov',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              SizedBox(width: 23),
              Container(
                margin: EdgeInsets.only(top: 12),
                width: 70,
                height: 16,
                decoration: BoxDecoration(
                  color: Style.colors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "obuna bo'lish",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                )),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 3,
            width: double.infinity,
            color: Style.colors.grey,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "36 ta dars (8 soat)",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return TextButton(
                onPressed: () {
                  setState(() {
                    pagesIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 24),
                  height: 48,
                  width: double.infinity,
                  color: pagesIndex == index
                      ? Style.colors.primary
                      : Style.colors.lightGrey,
                  child: Row(
                    children: [
                      index == 0 || index == 1
                          ? Text(
                              "${index + 1}.",
                              style: TextStyle(
                                  color: Style.colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          : Icon(
                              Icons.lock_outline,
                              color: Style.colors.black,
                              size: 15,
                            ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        SmmLesson[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Style.colors.black),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox();
            },
          )
        ],
      ),
    );
  }
}
