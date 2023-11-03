import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/texts.dart';

class GroupImgScreen extends StatelessWidget {
  const GroupImgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopGrpImg(),
      mobile: (_) => MobileGrpImg(),
    );
  }

  Widget DesktopGrpImg() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Palette.liteGreen,
      width: double.infinity,
      child: Column(
        children: [
          myTexts.titleText(text: "Let’s make it happen"),
          const SizedBox(
            height: 10,
          ),
          myTexts.dmSans16Grey(
              text:
                  "Through innovation, dedication, and daring, we are shaping the future. We have a clear vision."),
          myTexts.dmSans16Grey(
              text:
                  "To develop advanced, responsible technology solutions for healthcare. Be a part of innovative tech of the future!"),
          const SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage(myImages.groupImg),
            height: 400,
          )
        ],
      ),
    );
  }

  Widget MobileGrpImg() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Palette.liteGreen,
      width: double.infinity,
      child: Column(
        children: [
          myTexts.titleText(text: "Let’s make it happen"),
          const SizedBox(
            height: 10,
          ),
          myTexts.dmSans16Grey(
              text:
                  "Through innovation, dedication, and daring, we are shaping the future. We have a clear vision."),
          const SizedBox(
            height: 5,
          ),
          myTexts.dmSans16Grey(
              text:
                  "To develop advanced, responsible technology solutions for healthcare. Be a part of innovative tech of the future!"),
          const SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage(myImages.groupImg),
          )
        ],
      ),
    );
  }
}
