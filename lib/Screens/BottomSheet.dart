// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/icons.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg.dart';

import '../Utils/Sizes.dart';
import 'navBar.dart';

class AtreBottomSheet extends StatelessWidget {
  AtreBottomSheet({super.key});

  //  Nav Bar Items
  List<NavBarDetail> navBarList = [
    NavBarDetail(id: 1, title: "Home", navigation: "/"),
    NavBarDetail(id: 2, title: "About Us", navigation: "/about_us"),
    NavBarDetail(id: 3, title: "Career", navigation: "/career"),
    NavBarDetail(id: 4, title: "Product", navigation: "/product"),
    NavBarDetail(id: 5, title: "News & Article", navigation: "/news_articles")
  ];

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
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: navBarList.length,
                          itemBuilder: (context, i) => myWidgets.hoverWhiteText(
                              text: navBarList[i].title,
                              onTap: () {
                                context.go(navBarList[i].navigation);
                              })),
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
                            icon: SvgPicture.asset(myIcons.linkedIn_White)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(myIcons.twitter_White)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(myIcons.facebook_White)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(myIcons.insta_White))
                      ],
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myWidgets.hoverWhiteText(
                        text: "Terms & Service", onTap: () {}),
                    myWidgets.hoverWhiteText(
                        text: "Privacy Policy", onTap: () {}),
                    myWidgets.hoverWhiteText(
                        text: "Cookie Policy", onTap: () {}),
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
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: navBarList.length,
                  itemBuilder: (context, i) => Center(
                        child: myWidgets.hoverWhiteText(
                            text: navBarList[i].title,
                            onTap: () {
                              context.go(navBarList[i].navigation);
                            }),
                      )),
            ),
            myWidgets.whiteTitleText(text: "FOLLOW US"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(myIcons.linkedIn_White)),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(myIcons.twitter_White)),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(myIcons.facebook_White)),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(myIcons.insta_White))
              ],
            ),
            myWidgets.hoverWhiteText(text: "Terms & Service", onTap: () {}),
            myWidgets.hoverWhiteText(text: "Privacy Policy", onTap: () {}),
            myWidgets.hoverWhiteText(text: "Cookie Policy", onTap: () {}),
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
