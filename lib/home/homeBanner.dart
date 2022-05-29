import 'package:corona/constants.dart';
import 'package:corona/home/component/animatedtext.dart';
import 'package:corona/home/component/button.dart';
import 'package:flutter/material.dart';

class homeBanner extends StatelessWidget {
  const homeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                // animated tet for the banner
                SizedBox(
                  height: defaultPadding / 2,
                ),
                infoAnimatedText(context),
                // explore button here...
                SizedBox(
                  height: defaultPadding,
                ),
// explore button
                elevatedbutton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
