import 'package:flutter/cupertino.dart';

abstract class CustomImage {
  static const tesla = AssetImage("assets/icons/tesla_text.png");
  static const teslaBlue = AssetImage("assets/images/tesla_model_Y_blue.png");
  static const teslaBlack = AssetImage("assets/images/tesla_model_Y_black.png");
  static const teslaGrey = AssetImage("assets/images/tesla_model_Y_blueGrey.png");
  static const teslaRed = AssetImage("assets/images/tesla_red.png");
  static const teslaWhite = AssetImage("assets/images/tesla_white.png");
  static const onePageTesla = AssetImage("assets/images/bleck_tesla.png");
  static const lastPageTesla = AssetImage("assets/images/red_tesla.png");
  static const seatBlack = AssetImage("assets/images/black_seat.jpg");
  static const whiteSeat = AssetImage("assets/images/img_white_seat.jpg");
  static const avtopilot = AssetImage("assets/images/avtopilot.png");
  static const appleLogo = AssetImage("assets/icons/apple-logo-white.png");
  static const List<AssetImage> seat = [
     whiteSeat,
    seatBlack,
  ];
  static const List<AssetImage> carColor = [
    teslaBlack,
    teslaGrey,
    teslaBlue,
    teslaWhite,
    teslaRed,
  ];
}

