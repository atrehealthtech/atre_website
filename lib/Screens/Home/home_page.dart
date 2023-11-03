import 'package:atre_website/Screens/Home/technologyScreen.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../navBar.dart';
import '../BottomSheet.dart';
import 'IntroScreen.dart';
import 'contactUsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controllers
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: WebSmoothScroll(
              controller: controller,
              child: SingleChildScrollView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                child: const Column(
                  children: [
                    IntroScreen(), //lib/Screens/Home/IntroScreen.dart
                    TechnologyScreen(), //lib/Screens/Home/technologyScreen.dart
                    ContactUsScreen(), //lib/Screens/Home/contactUsScreen.dart
                    AtreBottomSheet() //lib/Screens/BottomSheet.dart
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
