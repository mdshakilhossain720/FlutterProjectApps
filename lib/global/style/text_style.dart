import 'package:flutter/material.dart';

class TextStyles {
  //:::::::::::::::::::
  static TextStyle customText(
      String fontFamily, double fontSize, FontWeight fontWEight) {
    return TextStyle(
      fontFamily: 'fontFamily',
      fontWeight: fontWEight,
      fontSize: fontSize,
    );
  }

  //:::::::::::::::::::
  static TextStyle extraSmallTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontSize: 14,
    );
  }

  static TextStyle smallTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontSize: 16,
    );
  }

  static TextStyle normalTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontSize: 18,
    );
  }

  static TextStyle largeTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontSize: 20,
    );
  }

  static TextStyle extraLargeTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontSize: 22,
    );
  }

  static TextStyle extraSmallBoldTextStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
  }

  static TextStyle smallTextBoldStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle normalTextBoldStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  static TextStyle largeTextBoldStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
  }

  static TextStyle extraLargeTextBoldStyle() {
    return TextStyle(
      fontFamily: 'monserrat',
      fontWeight: FontWeight.bold,
      fontSize: 22,
    );
  }

//:::::::::::::::::::

}
