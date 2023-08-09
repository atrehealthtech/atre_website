import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          myWidgets.greenMidText(text: "Why you should join us"),
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
                  myWidgets.blackMidText(text: "Innovation"),
                  myWidgets.subTitleText(
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
                  myWidgets.blackMidText(text: "Flexible working hours"),
                  myWidgets.subTitleText(
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
                  myWidgets.blackMidText(text: "Great learning environment"),
                  myWidgets.subTitleText(
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
          myWidgets.greenMidText(text: "Why you should join us"),
          const SizedBox(
            height: 20,
          ),
          myWidgets.blackMidText(text: "Innovation"),
          myWidgets.subTitleText(
              text:
                  "From ideation to execution, innovation is at the heart of everything we do."),
          const SizedBox(
            height: 10,
          ),
          myWidgets.blackMidText(text: "Flexible working hours"),
          myWidgets.subTitleText(
              text:
                  "Your time, your way - take control of your schedule with our flexible working hours."),
          const SizedBox(
            height: 10,
          ),
          myWidgets.blackMidText(text: "Great learning environment"),
          myWidgets.subTitleText(
              text:
                  "Learning is a journey, and we provide the perfect environment for yours.")
        ],
      ),
    );
  }
}
