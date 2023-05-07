import 'package:flutter/material.dart';

import 'package:realstate_webbb/screens/home_screen.dart';
import 'package:realstate_webbb/widgets/main/home_banner.dart';
import 'package:realstate_webbb/widgets/main/icon_info.dart';
import 'package:realstate_webbb/widgets/main/projects_info.dart';
import 'package:realstate_webbb/widgets/main/recommendation_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Homescreen(
      mainSection: SingleChildScrollView(
          child: Column(
        children: const [
          HomeBanner(),
          IconInfo(),
          Projects(),
          RecommendationInfo(),
        ],
      )),
    );
  }
}
