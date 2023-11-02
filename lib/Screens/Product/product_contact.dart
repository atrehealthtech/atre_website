// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductContact extends StatelessWidget {
  const ProductContact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileUI(),
      desktop: (_) => DesktopUI(context),
    );
  }

// ! Desktop UI

  Widget DesktopUI(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                myImages.circleBg,
              ),
              fit: BoxFit.fitWidth),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myWidgets.dmSans48Bold(text: productString.productContactTitle),
            const SizedBox(
              height: 40,
            ),
            _buildContactButton()
          ],
        ),
      );

// ! Mobile UI

  Widget MobileUI() => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              myImages.circleBg,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myWidgets.dmSans32Bold(
                text: "Interested in discussing a project with us?"),
            const SizedBox(
              height: 40,
            ),
            _buildContactButton()
          ],
        ),
      );

// ! Widgets

  Widget _buildContactButton() => InkWell(
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            decoration: BoxDecoration(
                color: Palette.primary, borderRadius: BorderRadius.circular(8)),
            child: Text("Contact us",
                style: TextStyle(
                    color: Palette.white,
                    fontSize: 16,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.w300))),
      );
}
