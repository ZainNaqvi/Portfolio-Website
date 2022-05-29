import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

class circleProgressIndicator extends StatelessWidget {
  circleProgressIndicator({
    Key? key,
    required this.percentage,
    required this.language,
  }) : super(key: key);
  final double percentage;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: percentage),
          duration: defaultDuration,
          builder: (BuildContext, double value, Widget) => AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toInt().toString() + "%"),
                ),
              ],
            ),
          ),
        ),
        Text(
          "\n$language",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                overflow: TextOverflow.ellipsis,
              ),
        ),
      ],
    );
  }
}
