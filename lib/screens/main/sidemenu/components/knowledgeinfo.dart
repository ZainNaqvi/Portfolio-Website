import 'package:corona/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget knowledgeinfo(
    {required BuildContext context, required String knowledgeTitle}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          knowledgeTitle,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    ),
  );
}
