

import 'package:flutter/material.dart';

import '../service/constants/colors.dart';

class SellectedCarColor extends StatelessWidget {
  final void Function() onPressed;
  final int index;
  final bool isSellected;
  final Color color;
  const SellectedCarColor({Key? key, required this.onPressed, required this.index, required this.isSellected, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        height: 50,
        width:  50,
        decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: isSellected ? Border.all(color: CustomColors.red208,width: 4) : const Border()
        ),
      ),
    );
  }
}
