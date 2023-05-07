import 'package:flutter/material.dart';
import 'package:realstate_webbb/constant.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Station Street 5'),
        buildContactInfo(title: 'Country', text: 'Africa'),
        buildContactInfo(title: 'Email', text: 'mohamed159\n@gmail.com'),
        buildContactInfo(title: 'Mobile', text: '012654895'),
        buildContactInfo(title: 'WebSite', text: 'My@WebSite.com')
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Kwhite),
          ),
          Text(text)
        ],
      ),
    );
  }
}
