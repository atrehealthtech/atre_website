import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';

class OurTeamSlideScreen extends StatelessWidget {
  const OurTeamSlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      desktop: (_) => DeskTopTeamSlide(),
      // mobile: (_) => MobileTeamSlide(),
    );
  }

  Widget DeskTopTeamSlide() {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        myWidgets.greenTitleText(text: "Our Team"),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 180,
          ),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              disableCenter: true,
              viewportFraction: 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
            itemCount: slideList.length,
            itemBuilder: (context, i, realIndex) => Column(
              children: [
                ClipRRect(
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
                const SizedBox(
                  height: 15,
                ),
                myWidgets.blackTitleText(text: slideList[i].name!),
                myWidgets.subTitleText(text: slideList[i].role!)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class OurTeam {
  String? imgUrl;
  String? name;
  String? role;
  OurTeam({required this.name, required this.role, required this.imgUrl});
}

List<OurTeam> slideList = [
  OurTeam(
    name: "Dr. Aishwarya Arjun",
    role: "Co-Founder",
    imgUrl: myImages.aishwaryaImg,
  ),
  OurTeam(
    name: "Balachandar P",
    role: "Robotic Engineer",
    imgUrl: myImages.balaImg,
  ),
  OurTeam(
    name: "Sugan S",
    role: "Design Engineer",
    imgUrl: myImages.suganImg,
  ),
  OurTeam(
    name: "Sachin",
    role: "Ux & Backend Engineer",
    imgUrl: myImages.sachinImg,
  ),
  OurTeam(
    name: "Manisha",
    role: "Junior Backend Engineer",
    imgUrl: myImages.manisha,
  ),
  OurTeam(
    name: "Jeeva P",
    role: "Junior Robotic Engineer",
    imgUrl: myImages.jeevaImg,
  ),
  OurTeam(
    name: "Malavika",
    role: "Junior Frontend Developer",
    imgUrl: myImages.malaImg,
  ),
  OurTeam(
    name: "Gowsalya",
    role: "Junior Frontend Developer",
    imgUrl: myImages.gowsiImg,
  ),
  OurTeam(
    name: "Velmurugan R",
    role: "Frontend Developer",
    imgUrl: myImages.velImg,
  ),
  OurTeam(
    name: "Ms. Amritha Krishnaraj",
    role: "Co-Founder",
    imgUrl: myImages.amrithaImg,
  ),
];
