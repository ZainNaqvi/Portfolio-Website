import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

Widget sideMenuHeaderInfo({required String title, required String desc}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          desc,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
