import 'package:corona/constants.dart';
import 'package:corona/models/Recommendation.dart';
import 'package:flutter/material.dart';

Column recommend(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
      SizedBox(
        height: defaultPadding,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            demo_recommendations.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: defaultPadding),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding),
                width: 400,
                color: secondaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      demo_recommendations[index].name.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      demo_recommendations[index].source.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      demo_recommendations[index].text.toString(),
                      maxLines: 4,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.grey,
                            height: 1.6,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: defaultPadding * 2,
      ),
    ],
  );
}
