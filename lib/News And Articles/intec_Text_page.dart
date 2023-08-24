import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntecTextPage extends StatelessWidget {
  const IntecTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => DeskTopIntecTextPage(),
      desktop: (_) => DeskTopIntecTextPage(),
    );
  }
}

Widget DeskTopIntecTextPage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 70),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        myWidgets.blackTitle(text: intecString.titleText),
        const SizedBox(
          height: 5,
        ),
        myWidgets.greyMidText(text: intecString.smallText)
      ],
    ),
  );
}
