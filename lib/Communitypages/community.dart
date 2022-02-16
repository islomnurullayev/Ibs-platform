import 'package:flutter/material.dart';
import 'package:ibs_platform/Communitypages/webinar.dart';
import 'package:ibs_platform/theme/style.dart';

class Community extends StatefulWidget {
  Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Style.colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: OutlineInputBorder(),
                  elevation: 15,
                  child: Container(
                    height: 244,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.network(
                                    'https://thumbs.dreamstime.com/b/video-blogger-typing-laptop-recording-voice-podcast-using-professional-microphone-creative-online-show-air-production-199919375.jpg')
                                .image)),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Style.colors.primary,
                        ),
                        height: 31,
                        width: 152,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "chatga qo'shilish",
                            style: Style.addchat,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 26,
                    top: 40,
                  ),
                  child: Text(
                    'Filtrlash',
                    style: Style.filtrlash,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 94,
                      margin: EdgeInsets.only(top: 9, left: 25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Style.colors.blue),
                      child: Center(
                        child: Text(
                          'dasturlash',
                          style: Style.programmer,
                        ),
                      ),
                    ),
                    Container(
                      height: 24,
                      width: 110,
                      margin: EdgeInsets.only(top: 9, left: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Style.colors.pink),
                      child: Center(
                        child: Text(
                          'graffic dizayn',
                          style: Style.programmer,
                        ),
                      ),
                    ),
                    Container(
                      height: 24,
                      width: 123,
                      margin: EdgeInsets.only(top: 9, left: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Style.colors.yellow),
                      child: Center(
                        child: Text(
                          '3d max dizayn',
                          style: Style.addchat,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(
                'Webinar',
                style: Style.webinar,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebiinarPage())),
                    child: Container(
                      height: 137,
                      width: 236,
                      margin: EdgeInsets.only(top: 8, left: 9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Style.colors.blue),
                      child: Container(
                        height: 32,
                        width: 32,
                        margin: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Style.colors.black),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_arrow_rounded,
                              color: Style.colors.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 137,
                    width: 236,
                    margin: EdgeInsets.only(left: 25, top: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Style.colors.blue),
                    child: Container(
                      height: 32,
                      width: 32,
                      margin: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Style.colors.black),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            color: Style.colors.primary,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 21),
              child: Text(
                'Blog',
                style: Style.webinar,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Blogpart(),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 21),
              child: Text(
                'Natijalar',
                style: Style.webinar,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    width: 234,
                    height: 136,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Style.colors.black),
                    child: Center(
                        child: Text(
                      'Moyshikdan frontend\ndasturchilikkacha',
                      style: Style.communiyyy,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    width: 234,
                    height: 136,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Style.colors.black),
                    child: Center(
                      child: Text(
                        '1000\$lik ishimni\n tashlab keldim',
                        style: Style.communiyyy,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Blogpart extends StatefulWidget {
  Blogpart({Key? key}) : super(key: key);

  @override
  State<Blogpart> createState() => _BlogpartState();
}

class _BlogpartState extends State<Blogpart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      child: Row(
        children: [
          Container(
            height: 137,
            width: 236,
            margin: EdgeInsets.only(top: 8, left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Style.colors.pink),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 27,
                      width: 27,
                      margin: EdgeInsets.only(left: 23, top: 37),
                      color: Style.colors.black,
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      margin: EdgeInsets.only(left: 5, top: 37),
                      color: Style.colors.black,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 5),
                  child: Text(
                    'Vector va raster\ngrafica farqi!',
                    style: Style.programmer,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Style.colors.white),
                      child: Center(
                        child: Text(
                          'A',
                          style: Style.putComments,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      child: Text(
                        'Abdurashid\n Zaxurov ',
                        style: Style.timecourse,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 137,
            width: 236,
            margin: EdgeInsets.only(top: 8, left: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Style.colors.blue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 48,
                  height: 27,
                  margin: EdgeInsets.only(left: 19, top: 30),
                  child: Icon(Icons.east),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 5),
                  child: Text(
                    "Axios orqali backend ma'lumotini olish",
                    style: Style.programmer,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Style.colors.white),
                      child: Center(
                        child: Text(
                          'M',
                          style: Style.putComments,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      child: Text(
                        'Maraim Tuxtasunov ',
                        style: Style.timecourse,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
