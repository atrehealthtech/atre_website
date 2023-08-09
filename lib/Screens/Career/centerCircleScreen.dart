import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenterCircleScreen extends StatelessWidget {
  const CenterCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DesktopCenterCircle(),
      mobile: (_) => MobileCenterCircle(),
    );
  }

  Widget DesktopCenterCircle() {
    return Container(
      height: 1000,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        // fit: BoxFit.contain,
        scale: 0.1,
        image: AssetImage(
          myImages.circleBg,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myWidgets.greenDancingText(text: "And above all..."),
          myWidgets.dancingMidText(
              text:
                  "A growing and talented team, fueled by a quality driven culture")
        ],
      ),
    );
  }

  Widget MobileCenterCircle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          myImages.circleBg,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myWidgets.greenDancingText(text: "And above all..."),
          myWidgets.dancingMidText(
              text:
                  "A growing and talented team, fueled by a quality driven culture")
        ],
      ),
    );
  }
}
