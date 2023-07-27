// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/icons.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Utils/Sizes.dart';

class AtreBottomSheet extends StatelessWidget {
  const AtreBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileBottomSheet(),
      desktop: (_) => DeskTopBottomSheet(),
    );
  }

  Widget DeskTopBottomSheet() {
    return Container(
      // height: 300,
      color: Palette.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myWidgets.whiteTitleText(text: "ABOUT"),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: myWidgets.whiteMidText(
                          text:
                              "At Atre, the focus is to advance health responsibly through the use of cutting-edge technology. We believe that by leveraging the power of robotics, ML, and AI, we can improve patient outcomes and support the medical professionals who care for them."),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myWidgets.whiteTitleText(text: "QUICK LINKS"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          myWidgets.hoverWhiteText(text: "Home"),
                          myWidgets.hoverWhiteText(text: "About us"),
                          myWidgets.hoverWhiteText(text: "Career"),
                          myWidgets.hoverWhiteText(text: "Product"),
                          myWidgets.hoverWhiteText(text: "News & Articles"),
                        ],
                      ),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myWidgets.whiteTitleText(text: "FOLLOW US"),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(myIcons.LinkedIn_White)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(myIcons.Twitter_White)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(myIcons.Facebook_White)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(myIcons.Insta_White))
                      ],
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myWidgets.hoverWhiteText(text: "Terms & Service"),
                    myWidgets.hoverWhiteText(text: "Privacy Policy"),
                    myWidgets.hoverWhiteText(text: "Cookie Policy"),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            myWidgets.whiteSmallText(
                text:
                    "COPYRIGHT © 2023 ALL RIGHTS RESERVED BY ATRE HEALTH TECH")
          ],
        ),
      ),
    );
  }

  Widget MobileBottomSheet() {
    return Container(
      color: Palette.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            myWidgets.whiteTitleText(text: "ABOUT"),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: myWidgets.whiteMidText(
                  text:
                      "At Atre, the focus is to advance health responsibly through the use of cutting-edge technology. We believe that by leveraging the power of robotics, ML, and AI, we can improve patient outcomes and support the medical professionals who care for them."),
            ),
            myWidgets.whiteTitleText(text: "QUICK LINKS"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myWidgets.hoverWhiteText(text: "Home"),
                  myWidgets.hoverWhiteText(text: "About us"),
                  myWidgets.hoverWhiteText(text: "Career"),
                  myWidgets.hoverWhiteText(text: "Product"),
                  myWidgets.hoverWhiteText(text: "News & Articles"),
                ],
              ),
            ),
            myWidgets.whiteTitleText(text: "FOLLOW US"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(myIcons.LinkedIn_White)),
                IconButton(
                    onPressed: () {}, icon: Image.asset(myIcons.Twitter_White)),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(myIcons.Facebook_White)),
                IconButton(
                    onPressed: () {}, icon: Image.asset(myIcons.Insta_White))
              ],
            ),
            myWidgets.hoverWhiteText(text: "Terms & Service"),
            myWidgets.hoverWhiteText(text: "Privacy Policy"),
            myWidgets.hoverWhiteText(text: "Cookie Policy"),
            const SizedBox(
              height: 30,
            ),
            myWidgets.whiteSmallText(
                text:
                    "COPYRIGHT © 2023 ALL RIGHTS RESERVED BY ATRE HEALTH TECH")
          ],
        ),
      ),
    );
  }
}
