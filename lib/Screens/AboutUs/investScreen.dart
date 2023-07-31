import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => DeskTopInvest(),
      mobile: (_) => DeskTopInvest(),
    );
  }

  Widget DeskTopInvest() {
    return Container(
      color: Palette.liteGreen,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        children: [
          myWidgets.boldBlackText(
              text:
                  "Invest in responsible revolutionizing healthtech with Atre"),
          const SizedBox(
            height: 10,
          ),
          myWidgets.subTitleText(
              text:
                  "We are on a mission to bring advancements to healthcare that benefit every stakeholder."),
          myWidgets.subTitleText(
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
