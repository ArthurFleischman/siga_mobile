import 'package:flutter/material.dart';

ThemeData sigaLightTeme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    primarySwatch: Colors.blueGrey,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromRGBO(33, 54, 112, 1)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 40, vertical: 8)),
        textStyle:
            MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20)),
      ),
    ),
  );
}

ThemeData sigaDarkTeme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    primarySwatch: Colors.blueGrey,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 40, vertical: 8)),
          textStyle:
              MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20))),
    ),
  );
}
