import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design/screen/landingScreen.dart';
import 'package:ui_design/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Episode 1',
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_DARK_BLUE,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMAL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      home: Landingscreen(),
    );
  }
}
