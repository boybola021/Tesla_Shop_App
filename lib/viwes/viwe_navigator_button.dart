import 'package:flutter/material.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';

import '../service/constants/colors.dart';

class CustomELevetedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double textSize;
  final Color buttonColor;
  final Color textColor;
  final double widthSizeButton;

  const CustomELevetedButton({
    Key? key,
    this.text = "",
    required this.buttonColor,
    this.textSize = 20,
    this.textColor = CustomColors.black01,
    this.widthSizeButton = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.red208),
          borderRadius: BorderRadius.all(
            Radius.circular(150),
          ),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: widthSizeButton, vertical: 19),
      ),
      child: ColletionTextWidgets.buttonText(
        text: text,
        fontSize: textSize,
        color: textColor,
      ),
    );
  }
}

/// new imageButton

class CustomMixinButton extends StatelessWidget {
  final Widget page;
  final String text;
  final double textSize;
  final Color buttonColor;
  final Color textColor;
  final AssetImage anyImage;

  const CustomMixinButton({
    Key? key,
    required this.page,
    this.text = "",
    required this.buttonColor,
    this.textSize = 20,
    this.textColor = CustomColors.black01,
    required this.anyImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: buttonColor,
        fixedSize: const Size(230, 60),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.red208),
          borderRadius: BorderRadius.all(
            Radius.circular(150),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 17,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: anyImage,
            height: 30,
            width: 30,
          ),
          ColletionTextWidgets.buttonText(
            text: text,
            fontSize: textSize,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
