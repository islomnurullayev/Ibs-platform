import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class WebiinarPage extends StatefulWidget {
  WebiinarPage({Key? key}) : super(key: key);

  @override
  State<WebiinarPage> createState() => _WebiinarPageState();
}

class _WebiinarPageState extends State<WebiinarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Style.colors.darkBlue,
              ),
              Container(
                margin: EdgeInsets.only(left: 22, top: 15),
                height: 43,
                width: double.infinity,
                child: Text(
                  'Junior va middle dasturchi\n farqi | Ali Karimov',
                  style: Style.juniorandmiddle,
                ),
              ),
              Container(
                height: 9,
                width: 109,
                margin: EdgeInsets.only(left: 22, top: 10),
                child: Text(
                  '3 kun oldin * 10.03.2022',
                  style: Style.username11,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.thumb_up_alt_outlined),
                        Text(
                          '45k',
                          style: Style.username11,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.thumb_down_alt_outlined),
                        Text(
                          '245',
                          style: Style.username11,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.remove_red_eye_outlined),
                        Text(
                          '273k',
                          style: Style.username11,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.reply,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          'ulanish',
                          style: Style.username11,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.bookmark_outline),
                        Text(
                          'saqlash',
                          style: Style.username11,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, top: 12, bottom: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Style.colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ali Karimov ',
                          style: Style.hellouser,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '12,3ming obunachi',
                          style: Style.username11,
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 32),
                      height: 24,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Style.colors.primary),
                      child: Center(
                        child: Text(
                          "obuna bo'lish",
                          style: Style.office,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
