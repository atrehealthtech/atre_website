import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

import '3d_product_screen.dart';

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
      body: const Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TriDiProductScreen(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
