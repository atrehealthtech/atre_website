import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TriDiProductScreen extends StatelessWidget {
  const TriDiProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => Desktop3DProduct(),
    );
  }

  Widget Desktop3DProduct() {
    return Container(
      height: 700,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ModelViewer(
              src: myImages.triDiDemoImg,
              backgroundColor: Palette.white,
              ar: true,
              arModes: ['scene-viewer', 'webxr', 'quick-look'],
              autoRotate: true,
              disableZoom: false,
            ),
          ),
          Expanded(flex: 3, child: Text("data"))
        ],
      ),
    );
  }
}
