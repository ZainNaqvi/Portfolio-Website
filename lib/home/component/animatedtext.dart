import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:corona/constants.dart';
import 'package:corona/home/fluttertag.dart';
import 'package:corona/responsive.dart';
import 'package:flutter/material.dart';

Row infoAnimatedText(BuildContext context) {
  return Row(
    children: [
      if (!Responsive.isMobileLarge(context)) fluttertag(context),
      if (!Responsive.isMobileLarge(context))
        SizedBox(
          width: defaultPadding / 2,
        ),
      DefaultTextStyle(
        style: TextStyle(
          color: Colors.white,
        ),
        maxLines: 1,
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              "Complete Foot-Ball Shop Application",
              speed: const Duration(milliseconds: 30),
            ),
            TyperAnimatedText(
              "Complete Portfolio web Application",
              speed: const Duration(milliseconds: 30),
            ),
            TyperAnimatedText(
              "Complete Alarm Application",
              speed: const Duration(milliseconds: 30),
            ),
            TyperAnimatedText(
              "Complete Chat Application",
              speed: const Duration(milliseconds: 30),
            ),
            TyperAnimatedText(
              "Complete Guess game  Application",
              speed: const Duration(milliseconds: 30),
            ),
          ],
        ),
      ),
      if (!Responsive.isMobileLarge(context))
        SizedBox(
          width: defaultPadding / 2,
        ),
      if (!Responsive.isMobileLarge(context)) fluttertag(context),
    ],
  );
}
