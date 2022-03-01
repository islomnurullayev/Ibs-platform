import 'package:flutter/material.dart';
import 'package:ibs_platform/course/coursepage.dart';
import 'package:ibs_platform/home/home.dart';
import 'package:ibs_platform/onboardingpage/onboarding.dart';
import 'package:ibs_platform/portfolio/coding%20challanges.dart';

class IbsApp extends StatelessWidget {
  const IbsApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Onboardingpage(),
      ),
    );
  }
}
