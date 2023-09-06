
import 'package:flutter/material.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwes_image.dart';

import '../service/constants/colors.dart';
import '../viwes/viwe_navigator_button.dart';
import '../viwes/viwe_text_widgets.dart';
import 'main_page.dart';











class Tesla extends StatefulWidget {
  final void Function()? onPressed;
  const Tesla({Key? key, this.onPressed,}) : super(key: key);
  @override
  State<Tesla> createState() => _TeslaState();
}

class _TeslaState extends State<Tesla> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
     final x = MediaQuery.of(context).size.width;
     final y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.backroundImageColor,
      body: Column(
        children: [
           SizedBox(
             child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
               child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColletionTextWidgets.selectYourCarWidgets,
                  const SizedBox(height: 16,),
                   ViweImage.baseRedCar,
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColletionTextWidgets.perfomansWidget,
                      ColletionTextWidgets.longRangeWidget,
                    ],
                  ),
                ],
               ),
             ),
           ),
            Expanded(
              flex: 2,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      ColletionTextWidgets.sped35Widgets,
                        Container(height: 57,width: 1,color: CustomColors.grey,),
                        ColletionTextWidgets.topSped,
                      ],
                    ),
                    SizedBox(height: y / 29,),
                    ColletionTextWidgets.aboutWidgets,
                    SizedBox(height: y / 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       ColletionTextWidgets.money55700Widgets,
                            CustomELevetedButton(
                             onPressed: widget.onPressed,
                            text: CustomStrings.next,
                            buttonColor: CustomColors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
