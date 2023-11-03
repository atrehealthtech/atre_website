// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Utils/texts.dart';
import '../../Widgets/myWidgets.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DeskTopInvest(),
      mobile: (_) => DeskTopInvest(),
    );
  }

  // ! Desktop

  Widget DeskTopInvest() {
    return Container(
      color: Palette.liteGreen,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          myTexts.boldBlackText(
              text:
                  "Invest in responsible revolutionizing healthtech with Atre"),
          const SizedBox(
            height: 10,
          ),
          myTexts.dmSans16Grey(
              text:
                  "We are on a mission to bring advancements to healthcare that benefit every stakeholder."),
          myTexts.dmSans16Grey(
              text:
                  "We can’t do it without our visionary investors, who steer us toward a bright, renewable future."),
          const SizedBox(
            height: 20,
          ),
          myWidgets.greenButton(text: "Invest in Atre", onTap: () {}),
        ],
      ),
    );
  }

// ! Mobile

  Widget MobileInvest() {
    return Container(
      color: Palette.liteGreen,
      width: double.infinity,
      child: Column(
        children: [
          myTexts.boldBlackText(
              text:
                  "Invest in responsible revolutionizing healthtech with Atre"),
          const SizedBox(
            height: 10,
          ),
          myTexts.dmSans16Grey(
              text:
                  "We are on a mission to bring advancements to healthcare that benefit every stakeholder."),
          myTexts.dmSans16Grey(
              text:
                  "We can’t do it without our visionary investors, who steer us toward a bright, renewable future."),
          const SizedBox(
            height: 20,
          ),
          myWidgets.greenButton(text: "Invest in Atre", onTap: () {})
        ],
      ),
    );
  }
}
