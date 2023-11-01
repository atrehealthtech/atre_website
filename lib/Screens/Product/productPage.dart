import 'package:atre_website/Screens/Product/product_contact.dart';
import 'package:atre_website/Screens/Product/purpose.dart';
import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

import '../BottomSheet.dart';
import 'intro.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
                  const ProductIntro(),
                  const PurposeScreen(),
                  const ProductContact(),
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
