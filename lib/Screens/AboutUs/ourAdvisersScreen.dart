// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:atre_website/Utils/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';
import '../../Utils/icons.dart';
import '../../Widgets/myWidgets.dart';

class OurAdvisersScreen extends StatelessWidget {
  const OurAdvisersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopOurAdvisers(),
      mobile: (_) => MobileOurAdvisers(),
    );
  }

  Widget DesktopOurAdvisers() {
    return Container(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        myWidgets.greenTitleText(text: "Our Advisers"),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 180),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: h! / 1.3,
              disableCenter: true,
              viewportFraction: 0.3,

              // autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
            itemCount: advisersList.length,
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
                                  advisersList[i].imgUrl!,
                                ),
                                fit: BoxFit.cover,
                                opacity: 0.2)),
                        child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    myWidgets.subTitleText(
                                        text: advisersList[i].content),
                                    Image.asset(myIcons.LinkedIn_black),
                                  ],
                                ),
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
                        advisersList[i].imgUrl!,
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
                          text: advisersList[i].name!.toUpperCase()),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget MobileOurAdvisers() {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          myWidgets.greenTitleText(text: "Our Advisers"),
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
              itemCount: advisersList.length,
              itemBuilder: (context, i, realIndex) => Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: w! / 1.5,
                      height: h! / 2,
                      child: Image.asset(
                        advisersList[i].imgUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  myWidgets.miniBlackTitleText(
                      text: advisersList[i].name!.toUpperCase()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// =============================================================================================

class OurAdvisers {
  String? imgUrl;
  String? name;
  String? linkedInUrl;
  String? content;
  OurAdvisers({
    required this.name,
    required this.imgUrl,
    required this.linkedInUrl,
    required this.content,
  });
}

List advisersList = [
  OurAdvisers(
    content:
        "Arjun has gained his expertise is robots and automation systems and currently is the Director of Effica automation. He works on providing turnkey solutions in the field of material handling and caters to a variety of engineering, FMCG and logistic industries. He is also the Chairman of CII- Coimbatore chapter and Native angle network and mentors startups on product design and business development.",
    imgUrl: myImages.arjunImg,
    linkedInUrl: "",
    name: "Mr.Arjun Prakash",
  ),
  OurAdvisers(
    content:
        "Krishnamoorthy Raman has over 35 years of industrial experience in developing new products, innovative technology and has conceptualised many new designs in the area of Industrial Products. He joined an Indian Multinational Engineering Conglomerate in their Engineering Services Vertical and incubated Motion Control and Power Electronic Practice and setup several labs in the area of Motion Control, Lighting, Building Automation and Robotics. He is also an avid practitioner of Spiritual teachings and conducted several value-based leadership programs for young engineers and first-time managers to become successful leaders in their area of work.",
    imgUrl: myImages.krishnamoortyImg,
    linkedInUrl: "",
    name: "Mr.Krishnamoorty Raman",
  ),
  OurAdvisers(
    content:
        "Dr. Ramalingam is the head of urology at Hindustan hospitals, Urology surgery center and Centre of Excellence in Urology and Andrology in Coimbatore. He has over 40 yrs of experience in surgery and various urological procedures. One of the pioneers in advanced technology and was among the first to perform surgeries using robots. He has lead numerous robotic surgery trainings and has been the key in research of advanced medical technologies.",
    imgUrl: myImages.ramalingamImg,
    linkedInUrl: "",
    name: "Dr.Ramalingam",
  ),
];
