import 'package:atre_website/Utils/Sizes.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileArticle(),
      desktop: (_) => DeskTopArticle(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget DeskTopArticle() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 80),
    width: double.infinity,
    color: Palette.white,
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      myWidgets.articleContainer(
          containerHeight: 550,
          containerWidth: 400,
          img: myImages.inTecImg,
          titleText:
              "INTEC 2022 - International Machine tools & International Trade fair.",
          subtitleText:
              "Atre, made a splash at the INTEC 2022 expo in Coimbatore with the successful display of our tele-robotic ultrasound system. The expo, which was attended by healthcare professionals, engineers, and industry leaders, provided the perfect platform for us to showcase our innovative technology.",
          buttonText: "",
          onTap: () {}),
      SizedBox(
        width: w! / 20,
      ),
      myWidgets.articleContainer(
          containerHeight: 550,
          containerWidth: 400,
          img: myImages.nidhiPrays,
          titleText: "NIDHI PRAYAS - Department of Science and Technology.",
          subtitleText:
              "Atre, made a splash at the INTEC 2022 expo in Coimbatore with the successful display of our tele-robotic ultrasound system. The expo, which was attended by healthcare professionals, engineers, and industry leaders, provided the perfect platform for us to showcase our innovative technology.",
          buttonText: "Published By",
          onTap: () {})
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget MobileArticle() {
  return Container();
}
