import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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

Widget deskTopIntecTextPage() {
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
          height: 180,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100) ,
          child: myWidgets.greyNormalText(text: intecString.paraText2),
        ),
         const SizedBox(
          height: 180,
        ),
        myWidgets.greyNormalText(text: intecString.paraText3),
          const SizedBox(
          height: 50,
        ),
      ],
    ),
    
  );
  
}
Widget mobileIntecTextPage() {
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
          height: 30,
        ),
        myWidgets.greyNormalText(text: intecString.paraText1),
         const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80) ,
          child: myWidgets.greyNormalText(text: intecString.paraText2),
        ),
         const SizedBox(
          height: 80,
        ),
        myWidgets.greyNormalText(text: intecString.paraText3),
          const SizedBox(
          height: 30,
        ),
      ],
    ),
    
  );
  
}
