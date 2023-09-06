import 'package:flutter/material.dart';
import 'package:tap_bar/screens/main_page.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwe_navigator_button.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';
import '../service/constants/colors.dart';
import '../viwes/viwes_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onTap(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.black01,
      appBar: AppBar(
        backgroundColor: CustomColors.black01,
        title: ViweImage.teslaLogoWidgets,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: y / 10,
          ),
          ColletionTextWidgets.teslaTextWidet,
          SizedBox(
            height: y / 24,
          ),
          ColletionTextWidgets.modelY,
          ViweImage.modelYWidget,
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColletionTextWidgets.mi300Widgets,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  width: 1,
                  color: Colors.white,
                ),
                ColletionTextWidgets.awdWidget,
              ],
            ),
          ),
          SizedBox(
            height: y / 28,
          ),
          ColletionTextWidgets.accertionWidets,
          SizedBox(
            height: y / 50,
          ),
          ColletionTextWidgets.topSeedUpWidets,
          SizedBox(
            height: y / 25,
          ),
           CustomELevetedButton(
            onPressed: onTap,
            text: CustomStrings.orderNow,
            buttonColor: CustomColors.black01,
            textColor: CustomColors.white,
            widthSizeButton: 80,
          ),
        ],
      ),
    );
  }
}
