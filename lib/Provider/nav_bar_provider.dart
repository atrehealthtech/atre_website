import 'package:flutter/material.dart';

class NavBarProvider extends ChangeNotifier {
  // Selected menu item

  List<bool> selected = [true, false, false, false, false];

  // Selection Method
  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  //  Nav Bar Items
  List<NavBarDetail> navBarList = [
    NavBarDetail(title: "Home", navigation: "/"),
    NavBarDetail(title: "About Us", navigation: "/about_us"),
    NavBarDetail(title: "Career", navigation: "/career"),
    NavBarDetail(title: "Product", navigation: "/product"),
    NavBarDetail(title: "News & Article", navigation: "/news_articles")
  ];
}

class NavBarDetail {
  String title;
  String navigation;
  NavBarDetail({
    required this.title,
    required this.navigation,
  });
}
