import 'package:flutter/material.dart';

AspectRatio sideMenuHeader(BuildContext context) {
  return AspectRatio(
    aspectRatio: 1.23,
    child: Container(
      color: Color(0xFF242430),
      child: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("assets/images/profile.jpg"),
            radius: 50,
          ),
          Spacer(),
          Text(
            "Syed Zain Haider Naqvi",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Flutter Developer , Student & Singer",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.grey),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    ),
  );
}
