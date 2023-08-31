import 'package:atre_website/Utils/Strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../Widgets/myWidgets.dart';

class NidhiPrayasTextPage extends StatelessWidget {
  const NidhiPrayasTextPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => mobileNidhiPrayasTextPage(),
      desktop: (_) => deskTopNidhiPraysTextPage(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget deskTopNidhiPraysTextPage() {
 return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myWidgets.blackTitle(text: nidhiPraysString.titleText),
        const SizedBox(
          height: 5,
        ),
        myWidgets.greyMidText(text: nidhiPraysString.smallText),
         const SizedBox(
          height: 50,
        ),
        myWidgets.greyNormalText(text: nidhiPraysString.paraText1),
         const SizedBox(
          height: 180,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100) ,
          child: myWidgets.greyNormalText(text: nidhiPraysString.paraText2),
        ),
         const SizedBox(
          height: 180,
        ),
        myWidgets.greyNormalText(text: nidhiPraysString.paraText3),
          const SizedBox(
          height: 50,
        ),
      ],
    ),
    
  );  
}

Widget mobileNidhiPrayasTextPage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myWidgets.blackTitle(text: nidhiPraysString.titleText),
        const SizedBox(
          height: 5,
        ),
        myWidgets.greyMidText(text: nidhiPraysString.smallText),
         const SizedBox(
          height: 30,
        ),
        myWidgets.greyNormalText(text: nidhiPraysString.paraText1),
         const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80) ,
          child: myWidgets.greyNormalText(text: nidhiPraysString.paraText2),
        ),
         const SizedBox(
          height: 80,
        ),
        myWidgets.greyNormalText(text: nidhiPraysString.paraText3),
          const SizedBox(
          height: 30,
        ),
      ],
    ),
    
  );
}
