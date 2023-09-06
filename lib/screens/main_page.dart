
import 'package:flutter/material.dart';
import 'package:tap_bar/screens/page_one.dart';
import 'package:tap_bar/screens/sellected_car_page.dart';
import 'package:tap_bar/service/constants/icons.dart';
import 'package:tap_bar/viwes/viwes_image.dart';
import '../service/constants/images.dart';
import '../service/constants/strings.dart';
import '../viwes/viwe_tap_bar.dart';
import 'avtop_pilot.dart';
import 'interior_page.dart';

class MainPage extends StatefulWidget {
  final int index;
  const MainPage({Key? key,this.index = 0,}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  late PageController controller;
  int selectedIndex = 0;
  int lastPage = 0;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }
  void onTap(int i){
    if(i <= lastPage){
      selectedIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }
  void onPressed(int i){
    selectedIndex = i;
    lastPage = lastPage < i ? i : lastPage;
      setState(() {});
      controller.jumpToPage(selectedIndex);
    }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:  SizedBox(
          width: 40,
          child: CustomIcon.arrowBack,
        ),
        title: ViweImage.teslaLogo(image: CustomImage.tesla),
        centerTitle: true,
        bottom:  PreferredSize(
       preferredSize: Size(MediaQuery.sizeOf(context).width,60),
       child:  Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             for(int i = 0;i < CustomStrings.tabBarText.length;i++)
              TabBarButton(
                onPressed: () => onTap(i),
                  lastPage: lastPage,
                  sellectedIndex: selectedIndex,
                  i: i,
                  text: CustomStrings.tabBarText[i],
              ),
           ],
         ),
       ),
      ),
      ),
      body:  PageView(
        controller: controller,
       physics: const NeverScrollableScrollPhysics(),
        children:   [
          Tesla(onPressed: () => onPressed(1),),
          SellectedCarPage(onPressed: () => onPressed(2),),
          SeatPage(onPressed: () => onPressed(3),),
          const AvtopilotPage(),
        ],
      ),
    );
  }
}

