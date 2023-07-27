// ignore_for_file: non_constant_identifier_names

import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/onHover.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileNavBar(),
      desktop: (_) => DeskTopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 2.0), //(x,y)
          blurRadius: 2.0,
          spreadRadius: 2)
    ]),
    height: 70,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [navLogo(), const Icon(Icons.menu)],
      ),
    ),
  );
}

Widget DeskTopNavBar() {
  return Container(
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 2.0), //(x,y)
          blurRadius: 2.0,
          spreadRadius: 2)
    ]),
    height: 70,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Home'),
              const SizedBox(
                width: 20,
              ),
              navButton('About Us'),
              const SizedBox(
                width: 20,
              ),
              navButton('Career'),
              const SizedBox(
                width: 20,
              ),
              navButton('Product'),
              const SizedBox(
                width: 20,
              ),
              navButton('News & Articles')
            ],
          ),
        ],
      ),
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    child: OnHover(
      builder: (bool isHovered) {
        return Text(text,
            style: TextStyle(
                color: !isHovered ? Colors.black : Palette.primary,
                fontSize: 16,
                fontFamily: "DMSans",
                fontWeight: FontWeight.normal));
      },
    ),
  );
}
// Widget navButton(String text) {
//   return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 12),
//       child: HoverWidget(
//         onHover: (event) {},
//         hoverChild: Text(text,
//             style: TextStyle(
//                 color: Palette.primary,
//                 fontSize: 16,
//                 fontFamily: "DMSans",
//                 fontWeight: FontWeight.normal)),
//         child: Text(text,
//             style: const TextStyle(
//                 color: Colors.black,
//                 fontSize: 16,
//                 fontFamily: "DMSans",
//                 fontWeight: FontWeight.normal)),
//       ));
// }

Widget navLogo() {
  return Text(
    "atre",
    style: GoogleFonts.jost(
        color: Palette.primary, fontWeight: FontWeight.w500, fontSize: 32),
  );
}
