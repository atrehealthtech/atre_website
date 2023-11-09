import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NidhiPrayasImage extends StatelessWidget {
  const NidhiPrayasImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileNidhiPrayasImage(),
      desktop: (_) => DeskTopNidhiPrayasImage(),
    );
  }

// ! Desktop UI

  Widget DeskTopNidhiPrayasImage() => Container(
        width: double.infinity,
        child: Image.asset(
          myImages.nidhiPrays,
          fit: BoxFit.cover,
        ),
      );

// ! Mobile UI

  Widget MobileNidhiPrayasImage() => Container(
        width: double.infinity,
        child: Image.asset(
          myImages.nidhiPrays,
          fit: BoxFit.cover,
        ),
      );
}
