import 'package:corona/constants.dart';
import 'package:corona/screens/main/sidemenu/components/knowledgeinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class knowledge extends StatelessWidget {
  knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        Divider(),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          "Knowledge",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        knowledgeinfo(
            context: context, knowledgeTitle: "Bootstrap, Materialize"),
        knowledgeinfo(context: context, knowledgeTitle: "Tailwind Css"),
        knowledgeinfo(context: context, knowledgeTitle: "Graphic Designing"),
        knowledgeinfo(context: context, knowledgeTitle: "Git Knowledge"),
      ],
    );
  }
}
