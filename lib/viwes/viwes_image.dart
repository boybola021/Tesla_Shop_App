
import 'package:flutter/material.dart';
import '../service/constants/images.dart';

abstract class ViweImage{
  static Widget teslaLogo ({Color? color,required AssetImage image}) =>  Image(height: 22,image: image,color: color,);
  static Widget baseRedCar = Transform.scale(scale: 1.2,child: const Image(image: CustomImage.teslaRed,));
  static Widget chooseColorCar ({int index = 0,}) =>  Image(image: CustomImage.carColor[index],fit: BoxFit.fitWidth,);

  static Widget avtopilotWidgets = const Image(
    image: CustomImage.avtopilot,
    fit: BoxFit.cover,
    height: 550,
    width: double.infinity,
  );
  static Widget teslaLogoWidgets = const Image(image: CustomImage.tesla,color: Colors.grey,height: 20);
  static Widget modelYWidget = const Image(image: CustomImage.onePageTesla,);
  static Widget teslaRedWidgets = const Image(
    image: CustomImage.lastPageTesla,
    fit: BoxFit.cover,
    height: 600,
    width: double.infinity,
  );
}