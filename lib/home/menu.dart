import 'package:corona/constants.dart';
import 'package:corona/home/bannerdowninfo.dart';
import 'package:corona/responsive.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
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
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                ),
              ],
            )
          : Row(
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
            ),
    );
  }
}
