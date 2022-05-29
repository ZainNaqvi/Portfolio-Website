import 'package:corona/constants.dart';
import 'package:corona/screens/main/sidemenu/components/coding.dart';
import 'package:corona/screens/main/sidemenu/components/downloadCv.dart';
import 'package:corona/screens/main/sidemenu/components/header.dart';
import 'package:corona/screens/main/sidemenu/components/knowledge.dart';
import 'package:corona/screens/main/sidemenu/components/linearProgressIndicator.dart';
import 'package:corona/screens/main/sidemenu/components/sideinfo.dart';
import 'package:corona/screens/main/sidemenu/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class sideMenu extends StatelessWidget {
  const sideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          sideMenuHeader(context),
          // start of the box
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    sideMenuHeaderInfo(title: "Residence", desc: "Pakistan"),
                    sideMenuHeaderInfo(title: "City", desc: "wah"),
                    sideMenuHeaderInfo(title: "Age", desc: "19"),
                    Divider(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    // skills area
                    // spinner skill and animation in the spinner
                    skills(),
// coding
                    coding(),
                    //knowledge
                    knowledge(),
                    // Download cv
                    downloadcv(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
