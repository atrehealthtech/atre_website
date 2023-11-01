// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/onHover.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // Selected menu item

  int selectedItem = 0;

  //  Nav Bar Items
  List<NavBarDetail> navBarList = [
    NavBarDetail(id: 1, title: "Home", navigation: "/"),
    NavBarDetail(id: 2, title: "About Us", navigation: "/about_us"),
    NavBarDetail(id: 3, title: "Career", navigation: "/career"),
    NavBarDetail(id: 4, title: "Product", navigation: "/product"),
    NavBarDetail(id: 5, title: "News & Article", navigation: "/news_articles")
  ];

  bool isMenuClick = false;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileNavBar(),
      desktop: (_) => DeskTopNavBar(),
    );
  }

// ! Mobile Menu Bar

  Widget MobileNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0), //(x,y)
            blurRadius: 2.0,
            spreadRadius: 2)
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navLogo(),
              InkWell(
                  onTap: () {
                    setState(() {
                      isMenuClick = !isMenuClick;
                      print(isMenuClick);
                    });
                  },
                  child: const Icon(Icons.menu))
            ],
          ),
          Visibility(
            visible: isMenuClick,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: navBarList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 05),
                      child: navButton(
                          color: selectedItem == navBarList[index].id
                              ? Palette.primary
                              : Palette.black,
                          text: navBarList[index].title,
                          onTap: () {
                            setState(() {
                              selectedItem = navBarList[index].id;
                            });
                            Future.delayed(const Duration(seconds: 1),
                                () => context.go(navBarList[index].navigation));
                          }),
                    )),
          ),
        ],
      ),
    );
  }

// ! Desktop Nav bar

  Widget DeskTopNavBar() {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 2)
      ]),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            ListView.builder(
                shrinkWrap: true,
                itemCount: navBarList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: navButton(
                            color: selectedItem == navBarList[index].id
                                ? Palette.primary
                                : Palette.black,
                            text: navBarList[index].title,
                            onTap: () {
                              setState(() {
                                selectedItem = navBarList[index].id;
                                context.go(navBarList[index].navigation);
                              });
                            }),
                      ),
                    ))
          ],
        ),
      ),
    );
  }

// ! Widgets

  Widget navButton(
      {required String text, required Function onTap, required Color color}) {
    return OnHover(
      builder: (bool isHovered) {
        return GestureDetector(
          onTap: onTap as void Function(),
          child: Text(text,
              style: TextStyle(
                  color: !isHovered ? color : Palette.primary,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.normal)),
        );
      },
    );
  }

  Widget navLogo() {
    return Text(
      "atre",
      style: GoogleFonts.jost(
          color: Palette.primary, fontWeight: FontWeight.w500, fontSize: 32),
    );
  }
}

class NavBarDetail {
  int id;
  String title;
  String navigation;
  NavBarDetail(
      {required this.id, required this.title, required this.navigation});
}
