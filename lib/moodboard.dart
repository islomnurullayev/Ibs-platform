import 'package:flutter/material.dart';
import 'package:ibs_platform/Communitypages/community.dart';
import 'package:ibs_platform/course/coursepage.dart';
import 'package:ibs_platform/theme/style.dart';

class MoodBoard extends StatefulWidget {
  const MoodBoard({Key? key}) : super(key: key);

  @override
  State<MoodBoard> createState() => _MoodBoardState();
}

List<String> namesComented = [
  "Azim Islamov",
  "New designer",
  "Rahimjanov",
];
List<String> coments = [
  "Juda ajoyib logo brandinglar",
  "Angrentech sal yemapti, nu lekin\nqolganlari zo'r chiqibti!",
  "good jobs!"
];

class _MoodBoardState extends State<MoodBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 5),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, top: 8),
                  width: 27,
                  height: 27,
                  color: Style.colors.black,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Style.colors.lightGreen,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.colors.black),
                    color: Style.colors.white,
                  ),
                  width: 73,
                  height: 27,
                  child: Text(
                    'logo\ndizayn',
                    style: TextStyle(fontSize: 10),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
              ],
            ),
            SizedBox(height: 13),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Logo design\n2022 year',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24),
                  height: 50,
                  width: 50,
                  child: Center(
                      child: Text(
                    "D",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  )),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Style.colors.yellow,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Column(
                  children: [
                    Text(
                      'Dovud Yusupov',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'grafik dizayner',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 44),
                  width: 89,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Style.colors.primary),
                  child: Center(
                    child: Text(
                      "obuna bo'lish",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 9,
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  Container(
                    height: 248,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.network(
                                  'https://www.glossary-internet.ru/upload/medialibrary/2b2/2b2ddaed4746815dfbf3f558407b5e8a.jpg')
                              .image,
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox();
              },
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              margin: EdgeInsets.only(left: 23),
              child: Text(
                'Logo design 2022 year',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23),
                  height: 16,
                  width: 16,
                  color: Style.colors.white,
                  child: Icon(
                    Icons.thumb_up_alt,
                    size: 16,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "794",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.remove_red_eye,
                  size: 20,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "3276",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(right: 19),
                    child: Text(
                      "19/12/2022",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 23),
              child: Text(
                "Ushbu taqdimotda 2022-yilda amalga oshirgan\nlogo-brandinglarimni joylashtirdim: Afruz supermarket,\nMoida group, Angrentech, Fath media.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            SizedBox(
              height: 130,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) => Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Style.colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      namesComented[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(coments[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14)),
                  ],
                ),
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 22,
                  );
                },
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                "Barcha kommentlarni ko'rish (107)",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, right: 56),
              height: 25,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: Style.texts.putComments,
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 4, left: 10)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 19),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Community()));
                      },
                      icon: Icon(Icons.person_add_alt_1),
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CoursePage()));
                    },
                    icon: Icon(
                      Icons.reply,
                      textDirection: TextDirection.rtl,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  tabController() {}
}
