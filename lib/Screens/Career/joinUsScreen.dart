import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/texts.dart';

class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopJoinUs(),
      mobile: (_) => MobileJoinUs(),
    );
  }

  Widget DesktopJoinUs() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 60),
      color: Palette.white,
      child: Column(
        children: [
          myTexts.greenMidText(text: "Why you should join us"),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myTexts.blackMidText(text: "Innovation"),
                  myTexts.dmSans16Grey(
                      text:
                          "From ideation to execution, innovation is at the heart of everything we do.")
                ],
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myTexts.blackMidText(text: "Flexible working hours"),
                  myTexts.dmSans16Grey(
                      text:
                          "Your time, your way - take control of your schedule with our flexible working hours.")
                ],
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myTexts.blackMidText(text: "Great learning environment"),
                  myTexts.dmSans16Grey(
                      text:
                          "Learning is a journey, and we provide the perfect environment for yours.")
                ],
              )),
            ],
          )
        ],
      ),
    );
  }

  Widget MobileJoinUs() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: Palette.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myTexts.greenMidText(text: "Why you should join us"),
          const SizedBox(
            height: 20,
          ),
          myTexts.blackMidText(text: "Innovation"),
          myTexts.dmSans16Grey(
              text:
                  "From ideation to execution, innovation is at the heart of everything we do."),
          const SizedBox(
            height: 10,
          ),
          myTexts.blackMidText(text: "Flexible working hours"),
          myTexts.dmSans16Grey(
              text:
                  "Your time, your way - take control of your schedule with our flexible working hours."),
          const SizedBox(
            height: 10,
          ),
          myTexts.blackMidText(text: "Great learning environment"),
          myTexts.dmSans16Grey(
              text:
                  "Learning is a journey, and we provide the perfect environment for yours.")
        ],
      ),
    );
  }
}
