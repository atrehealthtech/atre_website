// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:svg_flutter/svg.dart';
import '../../Utils/colors.dart';
import '../../Utils/texts.dart';

class PurposeScreen extends StatelessWidget {
  const PurposeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobilePurpose(),
      desktop: (_) => DeskTopPurpose(),
    );
  }

  // ! Desktop

  Widget DeskTopPurpose() => Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        color: Palette.liteGreen,
        width: double.infinity,
        child: Column(children: [
          myTexts.dmSans36Bold(text: productString.designPurpose),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              //  1st Purpose

              Expanded(
                  child: _buildPurposeDetail(
                      icon: myIcons.doctor,
                      title: productString.designTitle_1,
                      content: productString.design_desc_1)),

              //  2nd Purpose

              Expanded(
                  child: _buildPurposeDetail(
                      icon: myIcons.hospital,
                      title: productString.designTitle_1,
                      content: productString.design_desc_1)),

              //  3rd Purpose

              Expanded(
                  child: _buildPurposeDetail(
                      icon: myIcons.patient,
                      title: productString.designTitle_1,
                      content: productString.design_desc_1))
            ],
          )
        ]),
      );

  // ! Mobile UI

  Widget MobilePurpose() => Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        color: Palette.liteGreen,
        width: double.infinity,
        child: Column(children: [
          myTexts.dmSans36Bold(text: productString.designPurpose),
          const SizedBox(
            height: 10,
          ),
          _buildPurposeDetail(
              icon: myIcons.doctor,
              title: productString.designTitle_1,
              content: productString.design_desc_1),

          //  2nd Purpose

          _buildPurposeDetail(
              icon: myIcons.hospital,
              title: productString.designTitle_1,
              content: productString.design_desc_1),

          //  3rd Purpose

          _buildPurposeDetail(
              icon: myIcons.patient,
              title: productString.designTitle_1,
              content: productString.design_desc_1)
        ]),
      );

  // ! Widgets

  Widget _buildPurposeDetail(
          {required String icon,
          required String title,
          required String content}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              height: 10,
            ),
            myTexts.dmSans17Bold(text: title),
            const SizedBox(
              height: 10,
            ),
            myTexts.dmSans16Grey(text: content)
          ],
        ),
      );
}
