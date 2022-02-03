import 'package:flutter/cupertino.dart';
import 'package:ibs_platform/theme/colors.dart';
import 'package:ibs_platform/theme/text.dart';

class Style {
  //colors
  static AppColors colors = AppColors();


  static AppTexts texts = AppTexts();

  //text styles
  static TextStyle headTitle = TextStyle(
    color: colors.black,
    fontSize: 36,
    fontWeight: FontWeight.w500,
  );

}
