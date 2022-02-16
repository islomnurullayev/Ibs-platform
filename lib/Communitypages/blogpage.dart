import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class Blogpage extends StatefulWidget {
  Blogpage({Key? key}) : super(key: key);

  @override
  State<Blogpage> createState() => _BlogpageState();
}

class _BlogpageState extends State<Blogpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Style.colors.white,
        backgroundColor: Style.colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Style.colors.black,
          ),
        ),
      ),
      backgroundColor: Style.colors.white,
      body: Container(
        height: 182,
        width: double.infinity,
        decoration: BoxDecoration(color: Style.colors.pink),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 31, top: 37),
                  color: Style.colors.black,
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 7, top: 37),
                  color: Style.colors.black,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 31, top: 5),
              child: Text(
                'Vector va raster\ngrafica farqi!',
                style: Style.programmer,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 31),
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Style.colors.white),
                    child: Center(
                      child: Text(
                        'A',
                        style: Style.avatartext,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    child: Text(
                      'Abdurashid\n Zaxurov ',
                      style: TextStyle(
                          color: Style.colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
