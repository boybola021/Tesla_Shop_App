


import 'package:flutter/material.dart';

import '../service/constants/colors.dart';
import '../service/constants/fonts.dart';
import '../service/constants/strings.dart';

abstract class ColletionTextWidgets{
  static Widget buttonText ({
    Color color = CustomColors.black01,
    double fontSize = 20,
    String text = "",
  }){
    return Text(
      text,
      style: CustomFontsAndTextStyle.cuctomTextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
  static Widget perfomansWidget = RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.black01,
          fontSize: 23,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
              text: CustomStrings.performance
          ),
          TextSpan(
            text: CustomStrings.money55700,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.red208,
              fontSize: 19,),
          ),
        ]
    ),
  );
  static Widget longRangeWidget =   RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.grey,
          fontSize: 23,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
              text: CustomStrings.longRange
          ),
          TextSpan(
            text: CustomStrings.money46700,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.grey300,
              fontSize: 20,
            ),
          ),
        ]
    ),
  );
  static Widget selectYourCarWidgets = Text(
    CustomStrings.selectYourCar,style: CustomFontsAndTextStyle.cuctomTextStyle(
    color: CustomColors.greyA4,
    fontSize: 22,
  ),);
  static Widget sped35Widgets = RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.black01,
          fontSize: 33,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
              text: CustomStrings.sped35s
          ),
          TextSpan(
            text: CustomStrings.mph060,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.black01,
              fontSize: 12,),
          ),
        ]
    ),
  );
  static Widget topSped = RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.black01,
          fontSize: 33,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
              text: CustomStrings.mph150
          ),
          TextSpan(
            text: CustomStrings.topSpeed,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.black01,
              fontSize: 14,),
          ),
        ]
    ),
  );
  static Widget aboutWidgets =  Text(CustomStrings.about,style: CustomFontsAndTextStyle.cuctomTextStyle(
    fontSize: 18,
    height: 1.3,
    color: CustomColors.grey151,
  ),
  );
  static Widget money55700Widgets = Text(CustomStrings.money55700,style: CustomFontsAndTextStyle.cuctomTextStyle(
    fontSize: 28,
    color: CustomColors.black01,
  ));
  static Widget nextWidgets =  Text(CustomStrings.next,style: CustomFontsAndTextStyle.cuctomTextStyle(
    fontSize: 20,
    color: CustomColors.black01,
  ),
  );

  static Widget selectColorWidgets = Text(CustomStrings.selectColor,style: CustomFontsAndTextStyle.cuctomTextStyle(
    color: CustomColors.greyA4,
    fontSize: 22,
  ),);
  static Widget pearlyWidgets =  RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.black01,
          fontSize: 23,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
            text: CustomStrings.pearlWhite,
          ),
          TextSpan(
            text: CustomStrings.money2000,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.red208,
              fontSize: 19,),
          ),
        ]
    ),
  );
  static Widget vhicleWidgets = Text(CustomStrings.wheels20,style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize:18),);
  static Widget carbonWidgets = Text(CustomStrings.carbon,style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize:18));
  ///
   static Widget avtopilotText =   Text(
     CustomStrings.autopilotUp,
     style: CustomFontsAndTextStyle.cuctomTextStyle(
         color: CustomColors.grey151, fontSize: 20),
   );
   static Widget fullSelfDrivering =    RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.black01,
           fontSize: 23,
           fontWeight: FontWeight.w400,
         ),
         children: [
           const TextSpan(
             text: CustomStrings.fullSelf,
           ),
           TextSpan(
             text: CustomStrings.five,
             style:
             CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.red208,
               fontSize: 19,
             ),
           ),
         ]),
   );
   static Widget avtopilotTextTwo =  RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.grey,
           fontSize: 23,
           fontWeight: FontWeight.w400,
         ),
         children: [
           const TextSpan(
             text: CustomStrings.autopilot,
           ),
           TextSpan(
             text: CustomStrings.three,
             style:
             CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.grey151,
               fontSize: 19,
             ),
           ),
         ]),
   );
   static Widget aboutWidget =   Text(
     CustomStrings.avtomatic,
     style: CustomFontsAndTextStyle.cuctomTextStyle(
         fontSize: 20, color: CustomColors.grey151),
   );
   static Widget sexteenWidget = Text(CustomStrings.sexteen, style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize: 28),);
   static Widget teslaTextWidet = Text(CustomStrings.tesla,style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize: 36,color: CustomColors.white,fontWeight: FontWeight.w300),);
   static Widget modelY = Text(CustomStrings.modelY,style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize: 48,color: CustomColors.white,),);
   static Widget mi300Widgets =  RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.white,
          fontSize: 36,
          fontWeight: FontWeight.w800,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
            text: CustomStrings.mi300,
          ),
          TextSpan(
            text: CustomStrings.range,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.white,
              fontSize: 14,),
          ),
        ]
    ),
  );
   static Widget awdWidget =   RichText(
    text: TextSpan(
        style: CustomFontsAndTextStyle.cuctomTextStyle(
          color: CustomColors.white,
          fontSize: 36,
          fontWeight: FontWeight.w800,
          height: 1.5,
        ),
        children:  [
          const TextSpan(
            text: CustomStrings.awd,
          ),
          TextSpan(
            text: CustomStrings.dualMotor,
            style: CustomFontsAndTextStyle.cuctomTextStyle(
              color: CustomColors.white,
              fontSize: 14,),
          ),
        ]
    ),
  ) ;
   static Widget accertionWidets = RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.grey151,
           fontSize: 20,
           fontWeight: FontWeight.w300,
         ),
         children:  [
           const TextSpan(
             text: CustomStrings.acceleration,
           ),
           TextSpan(
             text: CustomStrings.mphin,
             style: CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.white,
               fontSize: 20,),
           ),
         ]
     ),
   );
   static Widget topSeedUpWidets = RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.grey151,
           fontSize: 20,
           fontWeight: FontWeight.w300,
         ),
         children:  [
           const TextSpan(
             text: CustomStrings.topSeedUp,
           ),
           TextSpan(
             text: CustomStrings.upTo,
             style: CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.white,
               fontSize: 20,),
           ),
         ]
     ),
   );
   static Widget selectedInterWidets = Text(CustomStrings.seleclect,style: CustomFontsAndTextStyle.cuctomTextStyle(color: CustomColors.grey151,fontSize: 20),);
   static Widget blackAndWidgets =  RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.black01,
           fontSize: 23,
           fontWeight: FontWeight.w400,
         ),
         children:  [
           const TextSpan(
             text: CustomStrings.blackaAndWhite ,
           ),
           TextSpan(
             text: CustomStrings.oneMillon,
             style: CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.red208,
               fontSize: 19,),
           ),
         ]
     ),
   );
   static Widget allBlackWidets=  RichText(
     text: TextSpan(
         style: CustomFontsAndTextStyle.cuctomTextStyle(
           color: CustomColors.grey,
           fontSize: 23,
           fontWeight: FontWeight.w400,
         ),
         children:  [
           const TextSpan(
             text: CustomStrings.allBlack,
           ),
           TextSpan(
             text: CustomStrings.included,
             style: CustomFontsAndTextStyle.cuctomTextStyle(
               color: CustomColors.grey151,
               fontSize: 19,),
           ),
         ]
     ),
   );
   static Widget fiveNightWidets = Text(CustomStrings.fiveNight,style: CustomFontsAndTextStyle.cuctomTextStyle(fontSize: 28),);
   static Widget summaryWidget = Text(CustomStrings.summary,style: CustomFontsAndTextStyle.cuctomTextStyle(
     fontSize: 24,
     color: Colors.white70,
   ),);
   static Widget modelYWidget = Text(CustomStrings.yorModelY,style: CustomFontsAndTextStyle.cuctomTextStyle(
     fontSize: 48,
     color: Colors.white,
   ),);
  static Widget  sexteenSevenWidget = Text(CustomStrings.sexteenSeven,style: CustomFontsAndTextStyle.cuctomTextStyle(
    fontSize: 36,
    color: Colors.white,
  ),);
  static Widget avtomaticWidget =  Text(
   CustomStrings.avtomatic,
    style: CustomFontsAndTextStyle.cuctomTextStyle(
        fontSize: 20, color: CustomColors.grey151),
  );

}