import 'package:corona/constants.dart';
import 'package:corona/home/component/projects.dart';
import 'package:corona/home/homeBanner.dart';
import 'package:corona/home/menu.dart';
import 'package:corona/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        // Home banner
        homeBanner(),
        SizedBox(
          height: defaultPadding,
        ),
        // banner menu
        menu(),
// projects
        project(),
        // recomendation
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          "Recommendations",
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
