

import 'package:flutter/material.dart';
import 'package:tap_bar/service/constants/colors.dart';
import 'package:tap_bar/service/constants/images.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwe_car_color_navigation.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';

import '../viwes/viwe_navigator_button.dart';
import 'main_page.dart';

class SeatPage extends StatefulWidget {
  final void Function()? onPressed;
  const SeatPage({Key? key, this.onPressed}) : super(key: key);

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int currentIndex = 0;
  bool isSellected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Image(
              height: 450,
              width: double.infinity,
              image: CustomImage.seat[currentIndex],fit: BoxFit.cover,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: CustomColors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,right: 46,top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColletionTextWidgets.selectedInterWidets,
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColletionTextWidgets.blackAndWidgets,
                          ColletionTextWidgets.allBlackWidets,
                        ],
                      ),
                      /// choose color seat
                      const SizedBox(height: 20,),
                      SizedBox(height: 70,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: CustomColors.seatColor.length,
                          itemBuilder: (_,index){
                            return SellectedCarColor(
                                onPressed:(){
                                  currentIndex = index;
                                  setState(() {});
                                },
                                index: index,
                                isSellected: currentIndex == index,
                                color: CustomColors.seatColor[index]
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ColletionTextWidgets.fiveNightWidets,
                           CustomELevetedButton(
                            onPressed: widget.onPressed,
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
