import 'package:flutter/material.dart';
import 'package:realstate_webbb/constant.dart';
import 'package:realstate_webbb/models/recommendation.dart';
import 'package:realstate_webbb/widgets/main/recommendation_card.dart';

class RecommendationInfo extends StatelessWidget {
  const RecommendationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  Cliet Recommendations",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: kDefaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                recommendations.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding),
                      child: RecommendtionCard(
                        recommendation: recommendations[index],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

