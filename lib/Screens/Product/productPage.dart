import 'package:atre_website/Screens/Product/product_contact.dart';
import 'package:atre_website/Screens/Product/purpose.dart';
import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/product_provider.dart';
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
    // Product provider
    final provider = context.watch<ProductProvider>();

    // Provider init for pixels

    provider.pixelInit();

    return Scaffold(
      backgroundColor: Palette.white,
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
              controller: provider.controller,
              child: const Column(
                children: [
                  ProductIntro(),
                  PurposeScreen(),
                  ProductContact(),
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
