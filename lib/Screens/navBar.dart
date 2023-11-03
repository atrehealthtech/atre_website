// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:atre_website/Provider/nav_bar_provider.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/onHover.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
    NavBarProvider provider = context.watch<NavBarProvider>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(2.0, 0.0), //(x,y)
            blurRadius: 2.0,
            spreadRadius: 2)
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navLogo(onTap: () => context.go("/")),
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
                itemCount: provider.navBarList.length,
                itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 05),
                      child: NavButton(
                        onTap: () {
                          // Selected item

                          provider.select(i);
                        },
                        selected: provider.selected[i],
                        text: provider.navBarList[i].title,
                        navigation: provider.navBarList[i].navigation,
                      ),
                    )),
          ),
        ],
      ),
    );
  }

// ! Desktop Nav bar

  Widget DeskTopNavBar() {
    NavBarProvider provider = context.watch<NavBarProvider>();
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
            navLogo(onTap: () {
              context.go("/");
            }),
            ListView.builder(
                shrinkWrap: true,
                itemCount: provider.navBarList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: NavButton(
                          onTap: () {
                            // Selected item

                            provider.select(i);
                          },
                          selected: provider.selected[i],
                          text: provider.navBarList[i].title,
                          navigation: provider.navBarList[i].navigation,
                        ),
                      ),
                    ))
          ],
        ),
      ),
    );
  }

// ! Widgets

  Widget navLogo({required Function onTap}) {
    return InkWell(
      onTap: onTap as void Function(),
      child: Text(
        "atre",
        style: GoogleFonts.jost(
            color: Palette.primary, fontWeight: FontWeight.w500, fontSize: 32),
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  NavButton(
      {required this.text,
      required this.onTap,
      required this.selected,
      required this.navigation,
      super.key});
  String text;
  Function onTap;
  bool selected;
  String navigation;

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (bool isHovered) {
        return InkWell(
          onTap: () {
            context.go(widget.navigation);
            widget.onTap();
          },
          child: Text(widget.text,
              style: TextStyle(
                  color: !isHovered
                      ? widget.selected
                          ? Palette.primary
                          : Palette.black
                      : Palette.primary,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight:
                      widget.selected ? FontWeight.w500 : FontWeight.normal)),
        );
      },
    );
  }
}
