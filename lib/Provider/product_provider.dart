import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final controller = ScrollController();
  double pixels = 0.0;

  void pixelInit() => controller.addListener(() {
        pixels = controller.position.pixels;
        print("pixels:${controller.position.pixels}");
        notifyListeners();
      });
}
