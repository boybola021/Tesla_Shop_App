import 'package:flutter/material.dart';
import '../service/constants/colors.dart';







class TabBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int sellectedIndex;
  final int i;
  final String text;
  const TabBarButton({Key? key, this.onPressed, required this.lastPage, required this.sellectedIndex, required this.i, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(text,
              style: (i <= lastPage) ?
              const TextStyle(
                  color: CustomColors.black01,
                  fontWeight: FontWeight.w500,
                  fontSize: 16):
              TextStyle(
                  color: CustomColors.grey,
                  fontSize: 16)),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (sellectedIndex == i)?
            CustomColors.red208 : Colors.transparent,
          )
        ],
      ),
    );
  }
}
