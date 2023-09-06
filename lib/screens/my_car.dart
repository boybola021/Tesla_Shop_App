

import 'package:flutter/material.dart';
import 'package:tap_bar/screens/sellected_car_page.dart';
import 'package:tap_bar/service/constants/colors.dart';
import 'package:tap_bar/service/constants/images.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';

import '../viwes/viwe_navigator_button.dart';
import '../viwes/viwes_image.dart';

class MyCar extends StatefulWidget {
  const MyCar({Key? key}) : super(key: key);

  @override
  State<MyCar> createState() => _MyCarState();
}

class _MyCarState extends State<MyCar> {

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
            Container(child: ViweImage.teslaRedWidgets),
            Align(
                alignment: const Alignment(0,- 0.9),
                child: ViweImage.teslaLogo(image: CustomImage.tesla,color: CustomColors.white)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 360,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: CustomColors.black01,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child:  Padding(
                padding: const EdgeInsets.only(left: 40, right: 46),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     SizedBox(height: y / 20,),
                    ColletionTextWidgets.summaryWidget,
                    SizedBox(height: y / 20,),
                    ColletionTextWidgets.modelYWidget,
                    SizedBox(height: y / 40,),
                    ColletionTextWidgets.sexteenSevenWidget,
                    SizedBox(height: y / 16,),
                     const CustomMixinButton(
                      page: SellectedCarPage(),
                      text: CustomStrings.pay,
                      textSize: 26,
                      buttonColor: CustomColors.black01,
                      textColor: Colors.white,
                       anyImage: CustomImage.appleLogo,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
