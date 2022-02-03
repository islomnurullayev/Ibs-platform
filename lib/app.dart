import 'package:flutter/material.dart';

import 'package:ibs_platform/theme/style.dart';

class IbsApp extends StatelessWidget {
  const IbsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Style.colors.pink,
            child: Text(
              Style.texts.appName,
            ),
          ),
        ),
      ),
    );
  }
}
