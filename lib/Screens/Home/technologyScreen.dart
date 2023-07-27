// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileTechnology(),
      desktop: (_) => DeskTopTechnology(),
    );
  }

  Widget DeskTopTechnology() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      width: double.infinity,
      color: Palette.white,
      child: Column(
        children: [
          myWidgets.greenTitleText(text: "Technology"),
          const SizedBox(
            height: 10,
          ),
          myWidgets.subTitleText(
              text:
                  "From concept to product, and from edge to cloud!\n     We deliver cutting edge technology solutions."),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1st Container
              myWidgets.technologyContainer(
                  containerHeight: 440,
                  containerWidth: 300,
                  img: myImages.technologyImg_1,
                  titleText: "Tele-robotic Ultrasound System",
                  subtitleText:
                      "Tele-robotic ultrasound system, which allows trained sonographers or radiologists to operate the ultrasound machine remotely, while the patient is examined by a local healthcare worker.",
                  buttonText: "Know More",
                  onTap: () {}),
              SizedBox(
                width: w! / 20,
              ),
              // 2nd Container
              myWidgets.technologyContainer(
                  containerHeight: 440,
                  containerWidth: 300,
                  img: myImages.technologyImg_2,
                  titleText: "Surgical simulator",
                  subtitleText:
                      "Surgical simulator, which provides a realistic and interactive training experience for surgeons. The simulator allows surgeons to practice procedures in a safe and controlled.",
                  buttonText: "Coming Soon",
                  onTap: () {}),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget MobileTechnology() {
    return Container(
      // height: h! / 1.085,
      width: double.infinity,
      color: Palette.white,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          myWidgets.greenTitleText(text: "Technology"),
          const SizedBox(
            height: 10,
          ),
          myWidgets.subTitleText(
              text:
                  "From concept to product, and from edge to cloud!\n     We deliver cutting edge technology solutions."),
          const SizedBox(
            height: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1st Container
              myWidgets.technologyContainer(
                  containerHeight: 440,
                  containerWidth: 300,
                  img: myImages.technologyImg_1,
                  titleText: "Tele-robotic Ultrasound System",
                  subtitleText:
                      "Tele-robotic ultrasound system, which allows trained sonographers or radiologists to operate the ultrasound machine remotely, while the patient is examined by a local healthcare worker.",
                  buttonText: "Know More",
                  onTap: () {}),
              SizedBox(
                height: h! / 20,
              ),
              // 2nd Container
              myWidgets.technologyContainer(
                  containerHeight: 440,
                  containerWidth: 300,
                  img: myImages.technologyImg_2,
                  titleText: "Surgical simulator",
                  subtitleText:
                      "Surgical simulator, which provides a realistic and interactive training experience for surgeons. The simulator allows surgeons to practice procedures in a safe and controlled.",
                  buttonText: "Coming Soon",
                  onTap: () {}),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
