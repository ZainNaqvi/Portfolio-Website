import 'package:corona/constants.dart';
import 'package:corona/screens/main/sidemenu/components/linearProgressIndicator.dart';
import 'package:flutter/material.dart';

class coding extends StatelessWidget {
  const coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        Divider(),
        SizedBox(
          height: defaultPadding,
        ),
        // Coding
        Text(
          "Coding",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),

        CustomLinearProgressIndicator(language: 'Dart', percentage: 0.87),
        CustomLinearProgressIndicator(
            language: 'React Native', percentage: 0.81),
        CustomLinearProgressIndicator(language: 'Python', percentage: 0.79),
        CustomLinearProgressIndicator(language: 'Html', percentage: 0.77),
        CustomLinearProgressIndicator(language: 'PHP', percentage: 0.67),
        CustomLinearProgressIndicator(language: 'Css', percentage: 0.63),
      ],
    );
  }
}
