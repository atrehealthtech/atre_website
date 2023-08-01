// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names

import 'package:atre_website/Utils/icons.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Utils/Sizes.dart';

class OurTeamSlideScreen extends StatelessWidget {
  const OurTeamSlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      desktop: (_) => DeskTopTeamSlide(),
      mobile: (_) => MobileTeamSlide(),
    );
  }

  Widget DeskTopTeamSlide() {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        myWidgets.greenTitleText(text: "Our Team"),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 180,
          ),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: h! / 1.3,
              disableCenter: true,
              viewportFraction: 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
            itemCount: slideList.length,
            itemBuilder: (context, i, realIndex) => Column(
              children: [
                HoverWidget(
                  hoverChild: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        width: w! / 7,
                        height: h! / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  slideList[i].imgUrl!,
                                ),
                                fit: BoxFit.cover,
                                opacity: 0.2)),
                        child: InkWell(
                            onTap: () {
                              _launchInBrowser(Uri(
                                  scheme: 'https',
                                  host: 'www.linkedin.com',
                                  path: "/in/${slideList[i].linkedInUrl!}"));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  slideList[i].content != ""
                                      ? myWidgets.subTitleText(
                                          text: slideList[i].content!)
                                      : Container(),
                                  Image.asset(myIcons.LinkedIn_black),
                                ],
                              ),
                            ))),
                  ),
                  onHover: (event) {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: w! / 7,
                      height: h! / 2,
                      child: Image.asset(
                        slideList[i].imgUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      myWidgets.miniBlackTitleText(
                          text: slideList[i].name!.toUpperCase()),
                      myWidgets.subTitleText(text: slideList[i].role!)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget MobileTeamSlide() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          myWidgets.greenTitleText(text: "Our Team"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: h! / 1.3,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
                disableCenter: true,
              ),
              itemCount: slideList.length,
              itemBuilder: (context, i, realIndex) => Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: w! / 1.5,
                      height: h! / 2,
                      child: Image.asset(
                        slideList[i].imgUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  myWidgets.miniBlackTitleText(
                      text: slideList[i].name!.toUpperCase()),
                  myWidgets.subTitleText(text: slideList[i].role!)
                ],
              ),
            ),
          )
        ],
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
// =============================================================================================

class OurTeam {
  String? imgUrl;
  String? name;
  String? role;
  String? linkedInUrl;
  String? content;
  OurTeam({
    required this.name,
    required this.role,
    required this.imgUrl,
    required this.linkedInUrl,
    required this.content,
  });
}

List<OurTeam> slideList = [
  OurTeam(
      name: "Dr. Aishwarya Arjun",
      role: "Co-Founder",
      imgUrl: myImages.aishwaryaImg,
      linkedInUrl: "",
      content: ""),
  OurTeam(
      name: "Balachandar P",
      role: "Robotic Engineer",
      imgUrl: myImages.balaImg,
      linkedInUrl: "bala-chandar-95b9a5185/",
      content: ""),
  OurTeam(
      name: "Sugan S",
      role: "Design Engineer",
      imgUrl: myImages.suganImg,
      linkedInUrl: "sugan-subramanian/",
      content: ""),
  OurTeam(
      name: "Sachin",
      role: "Ux & Backend Engineer",
      imgUrl: myImages.sachinImg,
      linkedInUrl: "anish-bala-sachin-119586199/",
      content: ""),
  OurTeam(
      name: "Manisha",
      role: "Junior Backend Engineer",
      imgUrl: myImages.manisha,
      linkedInUrl: "manisha-a-c-8a0294230/",
      content: ""),
  OurTeam(
      name: "Jeeva P",
      role: "Junior Robotic Engineer",
      imgUrl: myImages.jeevaImg,
      linkedInUrl: "",
      content: ""),
  OurTeam(
      name: "Malavika",
      role: "Junior Frontend Developer",
      imgUrl: myImages.malaImg,
      linkedInUrl: "malavika-a-c-539346236/",
      content: ""),
  OurTeam(
      name: "Gowsalya",
      role: "Junior Frontend Developer",
      imgUrl: myImages.gowsiImg,
      linkedInUrl: "gowsalya-natraj-909896243/",
      content: ""),
  OurTeam(
      name: "Velmurugan R",
      role: "Frontend Developer",
      imgUrl: myImages.velImg,
      linkedInUrl: "velmurugan-ravindran-a83438286/",
      content: ""),
  OurTeam(
      name: "Ms. Amritha Krishnaraj",
      role: "Co-Founder",
      imgUrl: myImages.amrithaImg,
      linkedInUrl: "amritakrishnaraj/",
      content:
          "With a Masters in Medical Robotics from Johns Hopkins University and research experience from Carnegie Mellon, Amrita is a highly skilled engineer with a passion for using technology to help the public."),
];
