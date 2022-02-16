import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class UsefulResources extends StatefulWidget {
  final String texts;
  final String title;
  final Color color;
  final List<String> topic;
  final String caption;
  final String level;
  const UsefulResources({
    Key? key,
    required this.title,
    required this.color,
    required this.topic,
    required this.caption,
    required this.level,
    required this.texts,
  }) : super(key: key);

  @override
  State<UsefulResources> createState() => _UsefulResourcesState();
}

class _UsefulResourcesState extends State<UsefulResources> {
  late String filtervalue;
  List<String> cheatSheet = ["HTML", "JS", "BOOTSTRAP", "JQUERY", "CSS"];
  @override
  void initState() {
    filtervalue = "Barchasi";
    super.initState();
  }

  Widget bottomSheetWidget(BuildContext context) => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              spreadRadius: 2,
              blurRadius: 5,
              color: Style.colors.grey,
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Style.colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Container(
                  height: 10,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Style.colors.grey),
                ),
              ),
            ),
            ListView.separated(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: cheatSheet.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    filtervalue = cheatSheet.elementAt(index);
                    Navigator.of(context).pop();
                    setState(() {});
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        cheatSheet.elementAt(index),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, int index) => SizedBox(
                height: 5,
              ),
            ),
          ],
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Style.colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              "assets/ibs.png",
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 36,
                        color: Style.colors.black),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    "Haqiqiy texnik intervyularga asoslangan kod\nsinovlari bilan bilimingiz sinab ko'ring.\nIsh qidirish uchun mashq qiling - yoki o'yin-kulgi\nuchun. Agar o'ta olmasangiz, tashvishlanmang.\nO'tishingizga yordam beradigan to'g'ri\nkurslarni qilamiz.",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 44,
                ),
                GestureDetector(
                  onTap: () {
                    showBottomSheet(
                      elevation: 0.9,
                      constraints:
                          BoxConstraints(minHeight: 200, maxHeight: 400),
                      context: context,
                      builder: bottomSheetWidget,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 24),
                    height: 48,
                    width: 180,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            filtervalue,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.expand_more,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(16),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        height: 140,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: widget.color,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                widget.caption,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Style.colors.white),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              widget.topic[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Style.colors.white),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.level,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Style.colors.white),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 16,
                        ),
                    itemCount: widget.topic.length),
              ],
            ),
          ),
        ));
  }
}
