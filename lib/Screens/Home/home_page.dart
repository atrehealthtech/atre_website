import 'package:atre_website/Screens/Home/technologyScreen.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const IntroScreen(), //lib/Screens/Home/IntroScreen.dart
                  const TechnologyScreen(), //lib/Screens/Home/technologyScreen.dart
                  const ContactUsScreen(), //lib/Screens/Home/contactUsScreen.dart
                  AtreBottomSheet() //lib/Screens/BottomSheet.dart
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
