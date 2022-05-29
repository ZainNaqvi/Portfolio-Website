import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

ThemeData themeMethod() {
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: bgColor,
    canvasColor: bgColor,
  );
}
