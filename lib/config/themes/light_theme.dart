import 'package:flutter/material.dart';
import 'package:petapp/config/color/color_manager.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.yellowColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorManager.darkBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
   
  )
);
