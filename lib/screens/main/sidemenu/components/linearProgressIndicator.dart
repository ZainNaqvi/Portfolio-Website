import 'package:corona/constants.dart';
import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  CustomLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.language,
  }) : super(key: key);
  final double percentage;
  final String language;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: percentage),
        duration: defaultDuration,
        builder: (BuildContext, double value, Widget) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  language,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
