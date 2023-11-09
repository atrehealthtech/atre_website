import 'package:atre_website/Routes/web_route_constants.dart';
import 'package:atre_website/Utils/Sizes.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../Utils/Strings.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileArticle(context),
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
            context.go(MyRouteConstants.blogIntec);
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerWidth: 370,
          img: myImages.inTecImg,
          titleText: articleString.articleTitleText1,
          dmSans16Grey: intecString.intecParaText,
          buttonText: articleString.buttonText,
          onTap: () {}),
      SizedBox(
        width: w! / 20,
      ),
      myWidgets.articleContainer(
          onContainerTap: () {
            context.go(MyRouteConstants.blogNidhiPrayas);
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerWidth: 370,
          img: myImages.nidhiPrays,
          titleText: articleString.articleTitleText2,
          dmSans16Grey: articleString.articleParaText,
          buttonText: articleString.buttonText,
          onTap: () {})
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget MobileArticle(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    width: double.infinity,
    color: Palette.white,
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      myWidgets.articleContainer(
          onContainerTap: () {
            context.go(MyRouteConstants.blogIntec);
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerWidth: 450,
          img: myImages.inTecImg,
          titleText: articleString.articleTitleText1,
          dmSans16Grey: intecString.intecParaText,
          buttonText: articleString.buttonText,
          onTap: () {}),
      SizedBox(
        height: h! / 20,
      ),
      myWidgets.articleContainer(
          onContainerTap: () {
            context.go(MyRouteConstants.blogNidhiPrayas);
          },
          authorText: articleString.authorText,
          nameText: articleString.nameText,
          containerWidth: 450,
          img: myImages.nidhiPrays,
          titleText: articleString.articleTitleText2,
          dmSans16Grey: articleString.articleParaText,
          buttonText: articleString.buttonText,
          onTap: () {})
    ]),
  );
}
