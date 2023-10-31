import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'nidhiprayas_Text_page.dart';
import 'nidhiprayas_image_screen.dart';

class NidhiParayasPage extends StatefulWidget {
  const NidhiParayasPage({super.key});

  @override
  State<NidhiParayasPage> createState() => _NidhiParayasPageState();
}

class _NidhiParayasPageState extends State<NidhiParayasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: const Column(
        children: [
  
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NavBar(),
                   NidhiPrayasImage(),
                    NidhiPrayasTextPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
