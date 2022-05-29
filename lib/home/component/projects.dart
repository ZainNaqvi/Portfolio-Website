import 'package:corona/constants.dart';
import 'package:corona/models/Project.dart';
import 'package:corona/responsive.dart';
import 'package:flutter/material.dart';

class project extends StatelessWidget {
  const project({
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
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: Grid(
            context: context,
            aspectRatio: 1.6,
            crossAxixcount: 1,
          ),
          mobileLarge: Grid(
            context: context,
            aspectRatio: 1.1,
            crossAxixcount: 2,
          ),
          desktop: Grid(
            context: context,
            aspectRatio: 1.1,
            crossAxixcount: 3,
          ),
          tablet: Grid(
            context: context,
            aspectRatio: 1.1,
            crossAxixcount: 3,
          ),
        ),
      ],
    );
  }

  GridView Grid(
      {required BuildContext context,
      required int crossAxixcount,
      required double aspectRatio}) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxixcount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (BuildContext, index) => Container(
        padding: EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              demo_projects[index].title!,
              maxLines: 2,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.white,
                    // fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: defaultPadding,
            ),

            Text(
              demo_projects[index].description!,
              maxLines: Responsive.isDesktop(context) ? 4 : 3,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.grey,
                    height: 1.4,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
            Spacer(),
            //Read more here...
            InkWell(
              onTap: () {},
              child: Text(
                "Read More>>",
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
