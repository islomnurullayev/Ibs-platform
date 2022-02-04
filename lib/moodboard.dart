import 'package:flutter/material.dart';
import 'package:ibs_platform/theme/style.dart';

class MoodBoard extends StatelessWidget {
  const MoodBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        color: Style.colors.yellow,
      ),
    );
  }
}
