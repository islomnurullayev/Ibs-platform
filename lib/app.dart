import 'package:flutter/material.dart';
import 'package:ibs_platform/Java%20Script%20Course.dart';

class IbsApp extends StatelessWidget {
  const IbsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: JavaCourse(),
        ),
      ),
    );
  }
}
