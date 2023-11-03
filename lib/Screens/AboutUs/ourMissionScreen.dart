// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/icons.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg.dart';

import '../../Utils/texts.dart';

class OurMissionScreen extends StatelessWidget {
  const OurMissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopOurMission(),
      mobile: (_) => MobileOurMission(),
    );
  }

  Widget DesktopOurMission() {
    return Container(
      color: Palette.liteGreen,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          myTexts.greenTitleText(text: "Our Mission"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 180, vertical: 40),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 10.0,
                          )
                        ]),
                        child: SvgPicture.asset(myIcons.lightBulb),
                      )),
                      Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTexts.blackMidText(text: "Mission"),
                              myTexts.dmSans16Grey(
                                  text:
                                      "Our mission is to be at the forefront of advancing health responsibly through the development and deployment of cutting-edge medical robotics technology.")
                            ],
                          ))
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10.0,
                        )
                      ]),
                      child: SvgPicture.asset(myIcons.bulls_eye),
                    )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myTexts.blackMidText(text: "Vision"),
                            myTexts.dmSans16Grey(
                                text:
                                    "We envision a future where medical robotics plays a crucial role in delivering efficient, effective and accurate medical care to improve the lives of patients worldwide")
                          ],
                        ))
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget MobileOurMission() {
    return Container(
      color: Palette.liteGreen,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          myTexts.greenMidText(text: "Our Mission"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10.0,
                        )
                      ]),
                      child: SvgPicture.asset(myIcons.lightBulb),
                    )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myTexts.blackMidText(text: "Mission"),
                            myTexts.dmSans16Grey(
                                text:
                                    "Our mission is to be at the forefront of advancing health responsibly through the development and deployment of cutting-edge medical robotics technology.")
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10.0,
                        )
                      ]),
                      child: SvgPicture.asset(myIcons.bulls_eye),
                    )),
                    Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            myTexts.blackMidText(text: "Vision"),
                            myTexts.dmSans16Grey(
                                text:
                                    "We envision a future where medical robotics plays a crucial role in delivering efficient, effective and accurate medical care to improve the lives of patients worldwide")
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
