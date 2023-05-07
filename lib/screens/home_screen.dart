import 'package:flutter/material.dart';

import '../constant.dart';
import '../responsive.dart';
import '../widgets/menu/side_menu_section.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required this.mainSection});
  final Widget mainSection; //var==widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: kBgColor,
                leading: Builder(
                  //عشان تشتغل حطيناها في بيلدر ويدجيت
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context)
                            .openDrawer(); //to open side menu section
                      },
                      icon: const Icon(Icons.menu)),
                )),
        drawer: const SidemenuSection(),
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1550.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    const Expanded(flex: 2, child: SidemenuSection()),
                  Expanded(flex: 7, child: mainSection)
                ],
              ),
            ),
          ),
        ));
  }
}
