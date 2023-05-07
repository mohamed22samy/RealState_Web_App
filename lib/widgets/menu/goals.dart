import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realstate_webbb/constant.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text("Goals", style: Theme.of(context).textTheme.subtitle2),
        ),
        buildGoals(images: "assets/icons/check.svg", text: "Planning Stage"),
        buildGoals(images: "assets/icons/check.svg", text: "Development"),
        buildGoals(images: "assets/icons/check.svg", text: "Execution Phase"),
        buildGoals(images: "assets/icons/check.svg", text: "New Way To Living"),
      ],
    );
  }

  Padding buildGoals({required String images, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(images),
          SizedBox(width: kDefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
