// ignore_for_file: unused_element, non_constant_identifier_names

import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../Utils/icons.dart';

class ProductIntro extends StatelessWidget {
  const ProductIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileIntro(),
      desktop: (_) => DeskTopIntro(),
    );
  }

  //!  Desktop UI

  Widget DeskTopIntro() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 70),
      child: Column(
        children: [
          Row(
            children: [
              // Product Image
              Expanded(
                  child: SizedBox(
                height: 500,
                child: Image.asset(
                  myImages.robot_without_circle,
                ),
              )),

              // Product Content
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      myWidgets.dmSans32Bold(text: productString.productTitle),
                      const SizedBox(
                        height: 10,
                      ),
                      myWidgets.dmSans16Grey(text: productString.productDesc),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildFeatureWithIcon(
                          icon: myIcons.usg_robot,
                          content: productString.productFeature_1),
                      _buildFeatureWithIcon(
                          icon: myIcons.voice_versa,
                          content: productString.productFeature_2),
                      _buildFeatureWithIcon(
                          icon: myIcons.remote,
                          content: productString.productFeature_3),
                      _buildFeatureWithIcon(
                          icon: myIcons.agile,
                          content: productString.productFeature_4),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          myWidgets.dmSans32Bold(text: "These 2 components make up TRUS"),
          const SizedBox(
            height: 50,
          ),

          //  1ST Component
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myWidgets.dmSans17Bold(text: productString.component_2),
                      const SizedBox(
                        height: 10,
                      ),
                      myWidgets.dmSans16Grey(
                          text: productString.component_desc_2)
                    ],
                  )),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(myImages.pedestal),
                ),
              ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),

          // 2ND Component

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(myImages.dr_ramalingam),
                ),
              )),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myWidgets.dmSans17Bold(text: productString.component_1),
                      const SizedBox(
                        height: 10,
                      ),
                      myWidgets.dmSans16Grey(
                          text: productString.component_desc_1)
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }

  //!  Mobile UI

  Widget MobileIntro() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          // Product Image
          SizedBox(
            height: 500,
            child: Image.asset(
              myImages.robot_without_circle,
            ),
          ),

          // Product Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              myWidgets.dmSans32Bold(text: productString.productTitle),
              const SizedBox(
                height: 10,
              ),
              myWidgets.dmSans16Grey(text: productString.productDesc),
              const SizedBox(
                height: 20,
              ),
              _buildFeatureWithIcon(
                  icon: myIcons.usg_robot,
                  content: productString.productFeature_1),
              _buildFeatureWithIcon(
                  icon: myIcons.voice_versa,
                  content: productString.productFeature_2),
              _buildFeatureWithIcon(
                  icon: myIcons.remote,
                  content: productString.productFeature_3),
              _buildFeatureWithIcon(
                  icon: myIcons.agile, content: productString.productFeature_4),
            ],
          ),

          const SizedBox(
            height: 50,
          ),
          myWidgets.dmSans32Bold(text: "These 2 components make up TRUS"),
          const SizedBox(
            height: 20,
          ),

          //  1ST Component
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myWidgets.dmSans17Bold(text: productString.component_2),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(myImages.pedestal),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  myWidgets.dmSans16Grey(text: productString.component_desc_2)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),

          // 2ND Component

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myWidgets.dmSans17Bold(text: productString.component_1),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(myImages.dr_ramalingam),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              myWidgets.dmSans16Grey(text: productString.component_desc_1)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureWithIcon({
    required String icon,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(
            width: 05,
          ),
          Expanded(flex: 8, child: myWidgets.dmSans16Grey(text: content))
        ],
      ),
    );
  }
}
