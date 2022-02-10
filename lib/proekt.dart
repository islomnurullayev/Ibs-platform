import 'package:flutter/material.dart';

class ProektPage extends StatefulWidget {
  const ProektPage({Key? key}) : super(key: key);

  @override
  State<ProektPage> createState() => _ProektPageState();
}

List<IconData> linkIcon = [
  Icons.link,
  Icons.link,
  Icons.link,
  Icons.link,
  Icons.link,
];

List<String> resursNum = [
  "Resurs 01.pdf",
  "Resurs 02.word",
  "Resurs 03.pdf",
  "Resurs 04.pdf",
  "Resurs 05.exsel",
];

List<String> fileStorage = [
  "1mb",
  "4mb",
  "6mb",
  "1,7mb",
  "1mb",
];

class _ProektPageState extends State<ProektPage> {
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
          margin: EdgeInsets.only(left: 24),
          height: 42,
          child: Text(
            'Talabalarning ishlari',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 67,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                    width: 122,
                    height: 67,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.network(
                                    'https://www.glossary-internet.ru/upload/medialibrary/2b2/2b2ddaed4746815dfbf3f558407b5e8a.jpg')
                                .image,
                            fit: BoxFit.cover)));
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5,
                );
              },
              itemCount: 3),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            "Proekt haqida",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            "It is long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum is...",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),
        SizedBox(height: 30),
        Container(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            "Resurslar",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(linkIcon[index]),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          resursNum[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Text(
                          fileStorage[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 15,
              );
            },
            itemCount: 5),
      ],
    );
  }
}
