import 'package:corona/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class downloadcv extends StatelessWidget {
  const downloadcv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        Divider(),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            SvgPicture.asset("assets/icons/download.svg"),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Container(
          height: 45,
          color: Color(0xFF242430),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              SizedBox(),
              SvgPicture.asset("assets/icons/linkedin.svg"),
              SvgPicture.asset("assets/icons/github.svg"),
              SvgPicture.asset("assets/icons/twitter.svg"),
              SvgPicture.asset("assets/icons/behance.svg"),
              SvgPicture.asset("assets/icons/dribble.svg"),
              SizedBox(),
              SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
