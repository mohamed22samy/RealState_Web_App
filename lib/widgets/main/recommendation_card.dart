import 'package:flutter/material.dart';
import 'package:realstate_webbb/constant.dart';
import 'package:realstate_webbb/models/recommendation.dart';

class RecommendtionCard extends StatelessWidget {
  const RecommendtionCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(recommendation.image!),
          ),
          title: Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          subtitle: Text(recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        Text(
          recommendation.text!,
          style: const TextStyle(height: 1.5),
          maxLines: 4,
          overflow: TextOverflow.ellipsis, //عشان الكلام مايطلعش من البوكس
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ]),
    );
  }
}
