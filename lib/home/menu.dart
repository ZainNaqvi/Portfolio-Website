import 'package:corona/home/bannerdowninfo.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        infoText(
          number: 100,
          desc: "Subscribers",
          string: "k",
        ),
        infoText(
          number: 10,
          desc: "Videos",
          string: "k",
        ),
        infoText(
          number: 18,
          desc: "Github Projects",
          string: "",
        ),
        infoText(
          number: 1,
          desc: "Stars",
          string: "k",
        ),
      ],
    );
  }
}
