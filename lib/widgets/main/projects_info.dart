import 'package:flutter/material.dart';
import 'package:realstate_webbb/constant.dart';
import 'package:realstate_webbb/models/projects.dart';
import 'package:realstate_webbb/responsive.dart';
import 'package:realstate_webbb/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  Our Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
          desktop: buildGridView(
              itemBuilder: (context, index) =>
                  ProjectCard(project: demoProjects[index]),
              childAspectRatio: 0.75,
              crossAxisCount: 3,
              itemCount: demoProjects.length),
          tablet: buildGridView(
              itemBuilder: (context, index) =>
                  ProjectCard(project: demoProjects[index]),
              childAspectRatio: 0.75,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              itemCount: demoProjects.length),
          mobileLarge: buildGridView(
              itemBuilder: (context, index) =>
                  ProjectCard(project: demoProjects[index]),
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              itemCount: demoProjects.length),
          mobile: buildGridView(
              itemBuilder: (context, index) =>
                  ProjectCard(project: demoProjects[index]),
              childAspectRatio: 0.75,
              crossAxisCount: 1,
              itemCount: demoProjects.length),
        ),
      ],
    );
  }

  GridView buildGridView(
      {required int itemCount,
      required int crossAxisCount,
      required double childAspectRatio,
      required Widget Function(BuildContext, int) itemBuilder}) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount, //number
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, //row
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }
}
