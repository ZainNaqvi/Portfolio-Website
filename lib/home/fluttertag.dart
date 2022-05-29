import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

Text fluttertag(BuildContext context) {
  return Text.rich(
    TextSpan(
      text: "<",
      children: [
        TextSpan(
          text: "flutter",
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: primaryColor),
        ),
        TextSpan(
          text: ">",
        ),
      ],
    ),
  );
}
