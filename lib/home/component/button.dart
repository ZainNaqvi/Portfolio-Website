import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

ElevatedButton elevatedbutton(BuildContext context) {
  return ElevatedButton(
    style: TextButton.styleFrom(
      backgroundColor: primaryColor,
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 2, vertical: defaultPadding),
    ),
    onPressed: () {},
    child: Text(
      "Explore Now".toUpperCase(),
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            color: darkColor,
          ),
    ),
  );
}
