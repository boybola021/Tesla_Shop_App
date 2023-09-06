


import 'package:flutter/material.dart';

abstract class CustomFontsAndTextStyle{
  static const  String gothamPro = "Gotham Pro";

  static TextStyle cuctomTextStyle({
     double fontSize = 20,
     Color color = Colors.black,
     double height = 1,
    FontWeight fontWeight = FontWeight.w400,

 }){
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
  ) ;
}
}

