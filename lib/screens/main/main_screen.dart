import 'package:corona/constants.dart';
import 'package:corona/screens/main/sidemenu/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // side drawer screen

              Expanded(
                flex: 2,
                child: sideMenu(),
              ),
              // right side home screen
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // over footer here...
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
