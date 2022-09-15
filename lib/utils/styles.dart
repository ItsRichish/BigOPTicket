import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

Color primary = const Color(0xff003d5b);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xffd1495b);
  static Color khakiColor = const Color(0xffd2bdb6);
  static Color greenColor = const Color(0xff1d7874);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 29, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 23, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
