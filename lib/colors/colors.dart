import 'package:flutter/material.dart';

abstract class AppColors {

  static const Color primary = Color(0xFF49B81F);
  static const Color errorToastColor = Color(0xFFC11718);
  static const Color successToastColor = Color(0xFF2EBD44);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color lightBlack = Color(0xff333333);
  static const Color lightOrange = Color(0xfffe9654);
  static const Color greyShadow = Color(0xffD9D9D9);
  static const Color blue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFF58b9f0);
  static const Color whiteGrey = Color(0xFF595858);
  static const Color scaffoldColor = Color(0xffe7e5e5);
  static const Color iconColor = Color(0x9E545252);
  static const Color blueColor = Colors.blue;
  static const Color pinkColor = Colors.pink;


  static const LinearGradient primaryIngredientColor = LinearGradient(
    colors: [Color(0xFF9fd276), Color(0xFF9fd276)],
    stops: [0, 1],
  );


  static const LinearGradient disableIngredientColor = LinearGradient(
    colors: [Color(0xffa8a6a6), Color(0xFF646464)],
    stops: [0, 1],
  );

}
