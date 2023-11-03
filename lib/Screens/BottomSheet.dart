// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:atre_website/Provider/nav_bar_provider.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/icons.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Utils/Sizes.dart';

class AtreBottomSheet extends StatefulWidget {
  const AtreBottomSheet({super.key});

  @override
  State<AtreBottomSheet> createState() => _AtreBottomSheetState();
}

class _AtreBottomSheetState extends State<AtreBottomSheet> {
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
    NavBarProvider provider = context.watch<NavBarProvider>();
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
                          itemCount: provider.navBarList.length,
                          itemBuilder: (context, i) => myWidgets.hoverWhiteText(
                              text: provider.navBarList[i].title,
                              onTap: () {
                                context.go(provider.navBarList[i].navigation);
                                provider.select(i);
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
                            onPressed: () {
                              _launchInBrowser(Uri(
                                  scheme: 'https',
                                  host: 'www.linkedin.com',
                                  path: "/company/atrehealthtech/"));
                            },
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
    NavBarProvider provider = context.watch<NavBarProvider>();

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
                  itemCount: provider.navBarList.length,
                  itemBuilder: (context, i) => Center(
                        child: myWidgets.hoverWhiteText(
                            text: provider.navBarList[i].title,
                            onTap: () {
                              context.go(provider.navBarList[i].navigation);
                              provider.select(i);
                            }),
                      )),
            ),
            myWidgets.whiteTitleText(text: "FOLLOW US"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _launchInBrowser(Uri(
                          scheme: 'https',
                          host: 'www.linkedin.com',
                          path:
                              "/in/company/atrehealthtech?trk=public_profile_topcard-current-company"));
                    },
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

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}
