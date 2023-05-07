import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../responsive.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/background.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          color: kDarkColor.withOpacity(0.10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                //لو الكود اتحقق هينفز الي جاي لا هينفز الي بعده
                "Build a greate future \n for all of us!",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Kwhite, fontWeight: FontWeight.bold)
                    : Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Kwhite, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: kDefaultPadding),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                          vertical: kDefaultPadding),
                      backgroundColor: kPrimaryColor),
                  onPressed: () {},
                  child: const Text(
                    "CONTACT US",
                    style: TextStyle(
                        color: kDarkColor, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
