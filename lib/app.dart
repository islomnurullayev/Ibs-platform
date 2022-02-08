import 'package:flutter/material.dart';
import 'package:ibs_platform/course/coursepage.dart';

class IbsApp extends StatelessWidget {
  const IbsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CoursePage(),
        ),
      ),
    );
  }
}
