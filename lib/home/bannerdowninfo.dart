import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

class infoText extends StatelessWidget {
  infoText({
    Key? key,
    required this.number,
    required this.desc,
    this.string,
  }) : super(key: key);
  final int number;
  final String desc;
  final String? string;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: number),
          duration: defaultDuration,
          builder: (BuildContext, value, Widget) => Text(
            value.toString(),
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          string! + "+",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          desc,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
