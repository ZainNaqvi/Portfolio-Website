import 'package:corona/constants.dart';
import 'package:corona/screens/main/sidemenu/components/progressiveindicator.dart';
import 'package:flutter/material.dart';

class skills extends StatelessWidget {
  const skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Expanded(
              child: circleProgressIndicator(
                language: "Flutter",
                percentage: 0.87,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: circleProgressIndicator(
                language: "React",
                percentage: 0.78,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: circleProgressIndicator(
                language: "Javascript",
                percentage: 0.68,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
