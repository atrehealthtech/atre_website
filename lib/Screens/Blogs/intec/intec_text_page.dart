import 'package:atre_website/Utils/Strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Utils/texts.dart';

class IntecTextPage extends StatelessWidget {
  const IntecTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => mobileIntecTextPage(),
      desktop: (_) => deskTopIntecTextPage(),
    );
  }
}

// ! Desktop UI

Widget deskTopIntecTextPage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTexts.blackTitle(text: intecString.titleText),
        const SizedBox(
          height: 5,
        ),
        myTexts.greyMidText(text: intecString.smallText),
        const SizedBox(
          height: 50,
        ),
        myTexts.greyNormalText(text: intecString.intecParaText),
        const SizedBox(
          height: 180,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: myTexts.greyNormalText(text: intecString.paraText2),
        ),
        const SizedBox(
          height: 180,
        ),
        myTexts.greyNormalText(text: intecString.paraText3),
        const SizedBox(
          height: 50,
        ),
      ],
    ),
  );
}

// ! Mobile UI

Widget mobileIntecTextPage() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTexts.dmSans17Bold(text: intecString.titleText),
        const SizedBox(
          height: 5,
        ),
        myTexts.greyMidText(text: intecString.smallText),
        const SizedBox(
          height: 10,
        ),
        myTexts.dmSans16Grey(text: intecString.intecParaText),
        const SizedBox(
          height: 40,
        ),
        myTexts.dmSans16Grey(text: intecString.paraText2),
        const SizedBox(
          height: 40,
        ),
        myTexts.dmSans16Grey(text: intecString.paraText3),
        const SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}
