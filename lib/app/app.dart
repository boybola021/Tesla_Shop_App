

import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const  HomePage(),
    );
  }
}
