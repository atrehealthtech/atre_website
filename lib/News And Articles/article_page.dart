import 'package:atre_website/News%20And%20Articles/intec_page.dart';
import 'package:atre_website/Utils/Sizes.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../Utils/Strings.dart';
import 'nidhiprayas_page.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileArticle(),
      desktop: (_) => DeskTopArticle(context),
    );
  }
}

// ignore: non_constant_identifier_names
Widget DeskTopArticle(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 80),
    width: double.infinity,
    color: Palette.white,
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      myWidgets.articleContainer(
          onContainerTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IntecPage();
            }));
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerHeight: 510,
          containerWidth: 400,
          img: myImages.inTecImg,
          titleText: articleString.articleTitleText1,
          subtitleText: articleString.articleParaText,
          buttonText: articleString.buttonText,
          onTap: () {}),
      SizedBox(
        width: w! / 20,
      ),
      myWidgets.articleContainer(
          onContainerTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NidhiParayasPage();
            }));
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerHeight: 510,
          containerWidth: 400,
          img: myImages.nidhiPrays,
          titleText: articleString.articleTitleText2,
          subtitleText: articleString.articleParaText,
          buttonText: articleString.buttonText,
          onTap: () {})
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget MobileArticle() {
  return Container();
}
