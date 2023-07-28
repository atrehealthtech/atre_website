import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Utils/Sizes.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (_) => DeskTopImage(),
      desktop: (_) => DeskTopImage(),
    );
  }

  Widget DeskTopImage() => Container(
        width: double.infinity,
        child: Image.asset(
          myImages.atreDeskImg,
          fit: BoxFit.cover,
        ),
      );
}
