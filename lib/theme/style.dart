import 'package:flutter/cupertino.dart';
import 'package:ibs_platform/theme/colors.dart';
import 'package:ibs_platform/theme/text.dart';

class Style {
  //colors
  static AppColors colors = AppColors();

  static AppTexts texts = AppTexts();

  //text styles
  static TextStyle appName = TextStyle(
    color: colors.black,
    fontSize: 12,
  );

  static TextStyle seeComments = TextStyle(
    color: colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle putComments = TextStyle(
    color: colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static TextStyle continues = TextStyle(
    color: colors.black,
    fontSize: 36,
    fontWeight: FontWeight.w500,
  );

  static TextStyle hellouser = TextStyle(
    color: colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static TextStyle programmer = TextStyle(
    color: colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle indenim = TextStyle(
    color: colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static TextStyle location = TextStyle(
    color: colors.grey,
    fontSize: 9,
  );

  static TextStyle graficdizayner = TextStyle(
    color: colors.black,
    fontSize: 18,
  );

  static TextStyle design = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w500,
  );

  static TextStyle prices = TextStyle(
    color: colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle username = TextStyle(
    color: colors.black,
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );

  static TextStyle office = TextStyle(
    color: colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle courcename = TextStyle(
    color: colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle timecourse = TextStyle(
    color: colors.black,
    fontSize: 6,
    fontWeight: FontWeight.w300,
  );

  static TextStyle cource = TextStyle(
    color: colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );
}
