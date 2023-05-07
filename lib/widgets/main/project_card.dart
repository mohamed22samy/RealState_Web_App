import 'package:flutter/material.dart';
import 'package:realstate_webbb/constant.dart';
import 'package:realstate_webbb/models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project, //var
  }) : super(key: key);
  final Project project; //مدخل من نوع بروجيكت
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              project.image!,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(height: kDefaultPadding / 3),
            Expanded(
              child: Text(
                project.description!,
                style: const TextStyle(height: 1.5),
              ),
            ),
            const SizedBox(height: kDefaultPadding / 5),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "More info! >",
                  style: TextStyle(color: kPrimaryColor),
                ))
          ]),
    );
  }
}
