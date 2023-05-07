import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realstate_webbb/constant.dart';
import 'package:realstate_webbb/widgets/menu/Logo.dart';
import 'package:realstate_webbb/widgets/menu/contact_info.dart';
import 'package:realstate_webbb/widgets/menu/goals.dart';

class SidemenuSection extends StatelessWidget {
  const SidemenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(children: [
        const Logo(),
        Expanded(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(kDefaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const ContactInfo(),
            const Divider(), //sin mark
            const Goals(),
            const Divider(),
            const SizedBox(height: kDefaultPadding), //sin mark
            TextButton(
                onPressed: () {},
                child: FittedBox(
                  child: Row(children: [
                    SvgPicture.asset("assets/icons/download.svg"),
                    const SizedBox(width: kDefaultPadding / 2),
                    Text(
                      "Download Brochure",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    )
                  ]),
                )),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 3),
              margin: const EdgeInsets.only(top: kDefaultPadding * 2),
              color: kSecondaryColor,
              child: Row(children: [
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/github.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/twitter.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/dribble.svg")),
                const Spacer()
              ]),
            )
          ]),
        ))
      ])),
    );
  }
}
