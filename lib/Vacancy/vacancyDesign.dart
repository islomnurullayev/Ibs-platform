import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class VacancyDesign extends StatefulWidget {
  VacancyDesign({Key? key}) : super(key: key);

  @override
  State<VacancyDesign> createState() => _VacancyDesignState();
}

class _VacancyDesignState extends State<VacancyDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Style.colors.black,
              child: Container(
                height: 32,
                width: 52,
                padding: EdgeInsets.only(right: 300),
                margin: EdgeInsets.only(top: 14, left: 24, bottom: 14),
                child: Image.network(
                    'https://cdna.artstation.com/p/assets/images/images/013/807/642/large/taskin-altinel-night.jpg?1541168703'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 22, top: 36),
                      height: 32,
                      child: Text(
                        'Grafik dizayner',
                        style: Style.continuees,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 36, left: 30, right: 40),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Style.colors.pink),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 22),
                  height: 22,
                  child: Text(
                    '400-500\$',
                    style: Style.prices1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24, left: 22),
                  height: 22,
                  child: Text(
                    'Indenim',
                    style: Style.prices1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6, left: 22),
                  height: 22,
                  child: Text(
                    'Chilonzor Toshkent',
                    style: Style.prices,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  color: Style.colors.black,
                  height: 1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
