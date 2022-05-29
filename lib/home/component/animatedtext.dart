import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:corona/constants.dart';
import 'package:corona/home/fluttertag.dart';
import 'package:flutter/material.dart';

Row infoAnimatedText(BuildContext context) {
  return Row(
    children: [
      fluttertag(context),
      SizedBox(
        width: defaultPadding / 2,
      ),
      AnimatedTextKit(
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
      SizedBox(
        width: defaultPadding / 2,
      ),
      fluttertag(context),
    ],
  );
}
