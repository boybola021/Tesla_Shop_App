import 'package:flutter/material.dart';
import 'package:tap_bar/screens/my_car.dart';
import 'package:tap_bar/service/constants/colors.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';
import 'package:tap_bar/viwes/viwes_image.dart';
import '../viwes/viwe_navigator_button.dart';

class AvtopilotPage extends StatefulWidget {
  const AvtopilotPage({Key? key,}) : super(key: key);

  @override
  State<AvtopilotPage> createState() => _AvtopilotPageState();
}

class _AvtopilotPageState extends State<AvtopilotPage> {
  void onTap(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCar()));
    setState(() {});
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ViweImage.avtopilotWidgets,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 46),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(height: 20,),
                    ColletionTextWidgets.avtopilotText,
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       ColletionTextWidgets.avtopilotText,
                        ColletionTextWidgets.avtopilotTextTwo,
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                   ColletionTextWidgets.avtomaticWidget,
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ColletionTextWidgets.sexteenWidget,
                         CustomELevetedButton(
                          onPressed: onTap,
                          text: CustomStrings.next,
                          buttonColor: CustomColors.white,
                        ),
                      ],
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
