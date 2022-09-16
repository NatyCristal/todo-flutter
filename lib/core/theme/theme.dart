import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/theme/colors.dart';

getAndroidTheme() {
  return ThemeData(
    primaryIconTheme: const IconThemeData(
      color: corDeAcao,
    ),
    primarySwatch: Colors.deepOrange,
    checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: corDeAcao),
        fillColor: MaterialStateProperty.all(backGroundButton),
        checkColor: MaterialStateProperty.all(corDeAcao)),
    iconTheme: const IconThemeData(color: corDeAcao),
    backgroundColor: backgroundColor,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    // textButtonTheme: TextButtonThemeData(
    //     style: ButtonStyle(
    //         textStyle:
    //             MaterialStateProperty.all(const TextStyle(color: corDeAcao)))),
    // buttonTheme: const ButtonThemeData(
    //   buttonColor: backGroundButton,
    // ),
  );
}

getCupertinoTheme() {
  return const CupertinoThemeData(barBackgroundColor: Colors.white);
}
