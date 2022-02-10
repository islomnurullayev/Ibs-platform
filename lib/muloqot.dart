import 'package:flutter/material.dart';

import 'package:ibs_platform/theme/style.dart';

class MuloqotPage extends StatelessWidget {
  const MuloqotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 20),
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "106 ta xabar...",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            )),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Style.colors.darkBlue),
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Asilbek Inomov",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            "Assalomu alaykum, ushbu dars juda ajoyib\no'tdi, mavzu oson tushunarli qilib\no'rgatilgan!",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.only(left: 50),
                    height: 28,
                    width: 27,
                    child: Icon(Icons.thumb_up_alt_outlined))),
            SizedBox(
              width: 12,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                    height: 28,
                    width: 27,
                    child: Icon(Icons.mode_comment_outlined))),
            SizedBox(
              width: 20,
            ),
            Text(
              "2 kun oldin",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
            ),
            Spacer(),
            Container(
                height: 16,
                width: 18,
                child: Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 16,
                )),
            SizedBox(
              width: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 32),
              child: Text(
                "23",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 27,
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Style.colors.lightGrey,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Style.colors.yellow),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Umidjon Zokirov",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            )
          ],
        ),
        SizedBox(height: 25),
        Container(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            "Various versions have evolved over the\nyears, sometimes by accident, sometimes\non purpose (injected humour and the like)",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 50),
                width: 27,
                height: 28,
                child: Icon(Icons.thumb_up_alt_outlined),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 27,
                height: 28,
                child: Icon(Icons.mode_comment_outlined),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "1 oy oldin",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
            ),
            Spacer(),
            Container(
                height: 16,
                width: 18,
                child: Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 16,
                )),
            SizedBox(
              width: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 32),
              child: Text(
                "238",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              "Javoblarni o'qish",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Style.colors.primary),
            ),
          ),
        )
      ],
    );
  }
}
