

import 'package:flutter/material.dart';

abstract class CustomColors{

  static const black01 = Color.fromRGBO(0,0,0,1);
   static Color grey = Colors.grey.shade400;
   static const greyA4 = Color(0xFFA4B0BC);
   static const grey151 = Color.fromRGBO(151, 151, 151, 1);
   static const backroundImageColor = Color.fromRGBO(242, 245, 248, 1);
   static const red208  = Color.fromRGBO(208, 16, 0, 1);
   static const blue = Color.fromRGBO(4, 75, 182, 1);
   static var grey300 = Colors.grey.shade300;
   static const white = Colors.white;
   static Color white70 = Colors.grey.shade100;

   static const List<Color> carColor = [
     CustomColors.black01,
     CustomColors.grey151,
     CustomColors.blue,
     CustomColors.white,
     CustomColors.red208,

   ];
   static   List<Color> seatColor = [white70,black01,];

}