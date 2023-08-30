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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myWidgets.blackTitle(text: intecString.titleText),
        const SizedBox(
          height: 5,
        ),
        myWidgets.greyMidText(text: intecString.smallText),
         const SizedBox(
          height: 50,
        ),
        myWidgets.greyNormalText(text: intecString.paraText1),
         const SizedBox(
          height: 250,
        ),
        myWidgets.greyNormalText(text: intecString.paraText2)
      ],
    ),
    
  );
  
}
