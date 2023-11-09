import 'package:atre_website/Routes/web_route_constants.dart';
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
    NavBarDetail(title: "Home", navigation: MyRouteConstants.homeRoute),
    NavBarDetail(title: "About Us", navigation: MyRouteConstants.aboutRoute),
    NavBarDetail(title: "Career", navigation: MyRouteConstants.careerRoute),
    NavBarDetail(title: "Product", navigation: MyRouteConstants.productRoute),
    NavBarDetail(title: "Blogs", navigation: MyRouteConstants.blogsRoute)
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
