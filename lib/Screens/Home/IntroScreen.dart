// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg.dart';
import '../../Utils/Sizes.dart';
import '../../Utils/texts.dart';

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
      color: Palette.liteGreen,
      child: Row(
        children: [
          // Intro Content

          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  myImages.intro_title,
                ),
                SizedBox(
                  height: h! / 30,
                ),
                myTexts.dmSans16Grey(
                    text:
                        "Breaking through the limitations of traditional ultrasound scanning method, TRUS assists with quick precise imaging over long distance, making ultrasound diagnosis more accessible in spite of the uneven distribution of medical resources."),
              ],
            ),
          )),

          // Intro Image

          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 600,
                child: Image.asset(
                  myImages.intro_robot,
                ),
              ),
            ],
          ))
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  myImages.intro_title,
                ),
                myTexts.dmSans16Grey(
                    text:
                        "Breaking through the limitations of traditional ultrasound scanning method, TRUS assists with quick precise imaging over long distance, making ultrasound diagnosis more accessible in spite of the uneven distribution of medical resources."),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            myImages.intro_robot,
          )
        ],
      ),
    );
  }
}
