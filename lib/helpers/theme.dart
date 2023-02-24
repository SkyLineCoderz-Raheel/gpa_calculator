import 'package:custom_utils/custom_utils.dart';
import 'package:easy_gpa_calculator/helpers/theme_service.dart';
import 'package:flutter/material.dart';

class Themes {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    fontFamily: "Nunito Sans",
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      headline4: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      // bodyLarge: TextStyle(
      //   fontSize: 22,
      //   fontWeight: FontWeight.bold,
      //   color: Colors.black
      // ),
      headline6: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.black),
    ),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
    fontFamily: "Nunito Sans",
    appBarTheme: AppBarTheme(
      color: Colors.black,
      toolbarTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      headline4: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      // bodyLarge: TextStyle(
      //     fontSize: 22,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white
      // ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white),
    ),
  );

  static bool setColor(BuildContext context) {
    Color? color = Theme.of(context).textTheme.bodyLarge?.color;
    return (color == Colors.white) ? true : false;
  }
}

TextStyle getAppbarTextTheme() {
  return TextStyle(
    color: !(ThemeServices.isSavedDarkMode()) ? Colors.black : Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
}
