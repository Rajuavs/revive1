import 'package:flutter/material.dart';

const Color appThemeColor = Color(0xFfB7016E);
const Color appLightThemeColor = Color(0xFFFF0099);
const Color appTextColor = Color(0xFFADADAD);
const Color appLightTextColor =
    Color(0xFFADADAD); //.fromRGBO(173, 173, 173, 1);
const Color appBgColor = Color(0xFFF9F9F9);
const Color appLightColor = Colors.white;
const Color appDarkColor = Colors.black;
const Color hintColor = Color(0xFFA3A3A3);
const Color txtColor = Color(0xFF000000);
const Color shadowColor1 = Colors.black38;
const Color c797979 = Color(0xFF797979);

const Color appGreyColor = Color.fromRGBO(192, 192, 192, 1);

BoxDecoration inkDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [appLightThemeColor, appThemeColor],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
  borderRadius: BorderRadius.circular(4.0),
);
