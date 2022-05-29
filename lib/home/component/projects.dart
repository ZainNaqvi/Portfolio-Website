import 'package:corona/constants.dart';
import 'package:corona/models/Project.dart';
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
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demo_projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: 1.5,
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
                  maxLines: 4,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.grey,
                        height: 1.5,
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
        ),
      ],
    );
  }
}
