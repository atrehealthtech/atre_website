// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileIntro(),
      desktop: (_) => DeskTopIntro(),
    );
  }

  Widget DeskTopIntro() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: h! / 5),
      // height: h! / 1.085,
      color: Palette.liteGreen,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myWidgets.titleText(
                    text: "Want anything to be easy with Doosan."),
                SizedBox(
                  height: h! / 100,
                ),
                myWidgets.subTitleText(
                    text:
                        "Breaking through the limitations of traditional ultrasound scanning method, TRUS assists with quick precise imaging over long distance, making ultrasound diagnosis more accessible in spite of the uneven distribution of medical resources."),
                SizedBox(
                  height: h! / 30,
                ),
                myWidgets.contactUsButton()
              ],
            ),
          )),
          Expanded(child: Image.asset("assets/images/doosan_robo.png"))
        ],
      ),
    );
  }

  Widget MobileIntro() {
    return Container(
      color: Palette.liteGreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myWidgets.titleText(
                    text: "Want anything to be easy with Doosan."),
                SizedBox(
                  height: h! / 100,
                ),
                myWidgets.subTitleText(
                    text:
                        "Breaking through the limitations of traditional ultrasound scanning method, TRUS assists with quick precise imaging over long distance, making ultrasound diagnosis more accessible in spite of the uneven distribution of medical resources."),
                SizedBox(
                  height: h! / 70,
                ),
                myWidgets.contactUsButton()
              ],
            ),
          ),
          Image.asset("assets/images/doosan_robo.png")
        ],
      ),
    );
  }
}
