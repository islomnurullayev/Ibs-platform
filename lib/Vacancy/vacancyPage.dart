import 'package:flutter/material.dart';
import 'package:ibs_platform/Vacancy/vacancyDesign.dart';
import 'package:ibs_platform/theme/style.dart';

class Vacancy extends StatefulWidget {
  const Vacancy({Key? key}) : super(key: key);

  @override
  State<Vacancy> createState() => _VacancyState();
}

class _VacancyState extends State<Vacancy> {
  List<String> companies = [
    'Indenim',
    'SQB',
    'Rounded LLS',
    'Marvel IT Academy',
  ];
  List<String> locations = [
    'Chilonzor Toshkent',
    'Yunsobod Toshkent',
    'Samarqand',
    'Chilonzor Toshkent',
  ];
  List<String> mentors = [
    'Grafic dizayner',
    'Java dasturchi',
    '3d max dizayner',
    'Python mentor',
  ];
  List<String> prices = [
    '400-500\$',
    '800-1000\$',
    '500-700\$',
    '1000-1200\$',
  ];
  List<String> date = [
    'bugun',
    '1 kun oldin',
    '1 kun oldin',
    '2 kun oldin',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 21, top: 66),
                      child: Text(
                        Style.texts.vacancies,
                        style: Style.vacansyalar,
                      ),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    Container(
                        height: 33,
                        width: 33,
                        margin: EdgeInsets.only(top: 66),
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                        ))
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 84,
                      margin: EdgeInsets.only(left: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Style.colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          'dasturchi',
                          style: Style.programmer,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 24,
                      width: 84,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Style.colors.pink,
                      ),
                      child: Center(
                        child: Text(
                          'dizayner',
                          style: Style.programmer,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 24,
                      width: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Style.colors.yellow,
                      ),
                      child: Center(
                        child: Text(
                          '3d dizayner',
                          style: TextStyle(
                              color: Style.colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 700,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VacancyDesign()));
                        },
                        child: Card(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Style.colors.white, width: 1)),
                          elevation: 8,
                          margin: EdgeInsets.only(left: 24, right: 66),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 36,
                                    width: 36,
                                    margin: EdgeInsets.only(left: 24, top: 24),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Style.colors.pink),
                                  ),
                                  SizedBox(width: 11),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 16,
                                        margin: EdgeInsets.only(top: 30),
                                        width: 63,
                                        child: Text(
                                          companies[index],
                                          style: Style.indenim,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        locations[index],
                                        style: Style.location,
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(top: 29, right: 41),
                                    width: 34,
                                    height: 11,
                                    child: Text(
                                      'office',
                                      style: Style.office,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 16,
                                width: 131,
                                margin: EdgeInsets.only(top: 13, left: 24),
                                child: Text(
                                  mentors[index],
                                  style: Style.hellouser,
                                ),
                              ),
                              Container(
                                height: 13,
                                width: 150,
                                margin: EdgeInsets.only(top: 6, left: 24),
                                child: Text(
                                  prices[index],
                                  style: Style.prices,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24,
                                      top: 14,
                                      bottom: 17,
                                    ),
                                    height: 8,
                                    width: 46,
                                    child: Text(
                                      date[index],
                                      style: Style.location,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 16,
                                    width: 54,
                                    margin:
                                        EdgeInsets.only(right: 41, bottom: 17),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Style.colors.lightGreen),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: companies.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 12,
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
