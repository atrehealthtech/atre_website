import 'package:atre_website/Screens/navBar.dart';
import 'package:flutter/material.dart';

import '../BottomSheet.dart';
import 'investScreen.dart';
import 'ourAdvisersScreen.dart';
import 'ourTeamSlideScreen.dart';
import 'aboutImageScreen.dart';
import 'inovationScreen.dart';
import 'ourMissionScreen.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AboutImage(),
                  InnovationScreen(),
                  OurMissionScreen(),
                  OurTeamSlideScreen(),
                  InvestScreen(),
                  OurAdvisersScreen(),
                  AtreBottomSheet()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
