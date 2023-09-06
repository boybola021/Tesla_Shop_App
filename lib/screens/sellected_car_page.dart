
import 'package:flutter/material.dart';
import 'package:tap_bar/screens/main_page.dart';
import 'package:tap_bar/service/constants/strings.dart';
import 'package:tap_bar/viwes/viwe_text_widgets.dart';
import '../service/constants/colors.dart';
import '../viwes/viwe_car_color_navigation.dart';
import '../viwes/viwe_navigator_button.dart';
import '../viwes/viwes_image.dart';

class SellectedCarPage extends StatefulWidget {
  final void Function()? onPressed;
  const SellectedCarPage({Key? key, this.onPressed}) : super(key: key);

  @override
  State<SellectedCarPage> createState() => _SellectedCarPageState();
}

class _SellectedCarPageState extends State<SellectedCarPage>{
   int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.backroundImageColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16,),
                  ColletionTextWidgets.selectColorWidgets,
                  /// choose image
                  Expanded(
                      child: ViweImage.chooseColorCar(index: currentIndex)),
                   SizedBox(height: y / 70,),
                  ColletionTextWidgets.pearlyWidgets,
                  SizedBox(height: y / 32,),
                  /// sellected car
                 SizedBox(
                   height: 70,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: CustomColors.carColor.length,
                       physics: const NeverScrollableScrollPhysics(),
                       itemBuilder: (_,index){
                         return SellectedCarColor(
                             onPressed: (){
                              currentIndex = index;
                              setState(() {});
                             },
                             index: index,
                             isSellected: currentIndex == index,
                             color: CustomColors.carColor[index],
                         );
                       }
                   ),
                 ),

                  const SizedBox(height: 20,),
                  Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 1,
                    color: CustomColors.grey,
                  ),

                  const SizedBox(height: 20,),
                  ColletionTextWidgets.vhicleWidgets,
                  const SizedBox(height: 13,),
                  ColletionTextWidgets.carbonWidgets,
                ],
              ),
            ),
          ),
          SizedBox(
            height: y * 0.14,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ColletionTextWidgets.money55700Widgets,
                   CustomELevetedButton(
                    onPressed: widget.onPressed,
                    text: CustomStrings.next,
                    buttonColor: CustomColors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




