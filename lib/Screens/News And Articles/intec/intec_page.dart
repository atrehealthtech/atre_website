import 'package:atre_website/Screens/BottomSheet.dart';
import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'intec_image_screen.dart';
import 'intec_text_page.dart';

class IntecPage extends StatefulWidget {
  const IntecPage({super.key});

  @override
  State<IntecPage> createState() => _IntecPageState();
}

class _IntecPageState extends State<IntecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body:  const Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IntecImage(),
                   IntecTextPage(),
                        AtreBottomSheet() 
                        ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
