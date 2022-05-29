import 'package:corona/home/home.dart';

import 'package:corona/widget/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMethod(),
      debugShowCheckedModeBanner: false,
      title:
          "Zain Haider Naqvi || Personal Portfolio || Flutter Responsive Web App || Personal Portfolion",
      home: HomeScreen(),
    );
  }
}
