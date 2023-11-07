import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/onHover.dart';

final myTexts = MyTexts();

class MyTexts {
  // this widget used for bold title texts
  Widget titleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 43,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }

  // this widget used for lib/Screens/Career/centerCircleScreen.dart
  Widget greenDancingText({required String text}) {
    return Text(text,
        style: GoogleFonts.dancingScript(
            color: Palette.primary, fontSize: 43, fontWeight: FontWeight.bold));
  }

  // this widget used for lib/Screens/Career/centerCircleScreen.dart
  Widget dancingMidText({required String text}) {
    return Text(text,
        style: GoogleFonts.dancingScript(
            color: Palette.black, fontSize: 36, fontWeight: FontWeight.w200));
  }
  // this widget used for normal subtitle texts

  Widget dmSans16Grey({required String text}) {
    return Text(
      text,
      style: GoogleFonts.dmSans(
        color: Palette.greyText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
    );
  }

  // this widget used for normal subtitle texts

  Widget subTitleGreyText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.grey, fontSize: 16, fontWeight: FontWeight.normal));
  }

  // this widget used for medium black texts

  Widget midBlackText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.greyText,
            fontSize: 17,
            fontWeight: FontWeight.w600));
  }

  // this widget used for medium black texts

  Widget dmSans17Bold({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 17, fontWeight: FontWeight.bold));
  }

  // this widget used for Bold 32 black texts

  Widget dmSans32Bold({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 32, fontWeight: FontWeight.bold));
  }

  // this widget used for Bold 48 black texts

  Widget dmSans48Bold({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 48, fontWeight: FontWeight.bold));
  }

  // this widget used for Bold 36 black texts

  Widget dmSans36Bold({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 36, fontWeight: FontWeight.w500));
  }
  // this widget used for medium green texts

  Widget greenDmSans17Bold({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.primary, fontSize: 17, fontWeight: FontWeight.bold));
  }

  // this widget used for bold green title texts

  Widget greenTitleText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.primary,
            wordSpacing: 2,
            fontSize: 32,
            fontWeight: FontWeight.bold));
  }
  // this widget used for medium bold green subtitle texts

  Widget greendmSans16Grey({required String text, TextDecoration? decoration}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.primary,
            decoration: decoration,
            fontSize: 16,
            fontWeight: FontWeight.bold));
  }

  // this widget used for medium green subtitle texts

  Widget greenMiniText({required String text, TextDecoration? decoration}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.primary,
            decoration: decoration,
            fontSize: 16,
            fontWeight: FontWeight.normal));
  }
  // this widget used for medium green Medium texts

  Widget greenMidText({
    required String text,
  }) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.primary, fontSize: 24, fontWeight: FontWeight.w600));
  }
  // this widget used for bold black title texts

  Widget blackTitleText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 20, fontWeight: FontWeight.w500));
  }
  // this widget used for bold black title texts in Intec Text Page

  Widget blackTitle({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 50, fontWeight: FontWeight.bold));
  }
  // this widget used for bold black title texts

  Widget miniBlackTitleText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 15, fontWeight: FontWeight.bold));
  }
  // this widget used for bold black title texts

  Widget boldBlackText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 25, fontWeight: FontWeight.w600));
  }
  // this widget used for bold black title texts

  Widget boldBlackMidText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black, fontSize: 20, fontWeight: FontWeight.w600));
  }
  // this widget used for normal white title texts

  Widget whiteTitleText({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text,
          style: GoogleFonts.dmSans(
              color: Palette.white, fontSize: 15, fontWeight: FontWeight.w500)),
    );
  }
  // this widget used for Mid White text

  Widget whiteMidText({required String text, TextAlign? align}) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.dmSans(
            color: Palette.white, fontSize: 16, fontWeight: FontWeight.normal));
  }
  // this widget used for Mid White text

  Widget whiteSmallText({required String text}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.white, fontSize: 13, fontWeight: FontWeight.normal));
  }
  // this widget used for Mid White text

  Widget hoverWhiteText({required String text, required Function onTap}) {
    return OnHover(
      builder: (isHovered) => InkWell(
        onTap: onTap as void Function(),
        child: Text(text,
            style: GoogleFonts.dmSans(
                color: !isHovered ? Palette.white : Palette.primary,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
      ),
    );
  }
  // this widget used for Mid black title texts

  Widget blackMidText({required String text, TextDecoration? textDecoration}) {
    return Text(text,
        style: GoogleFonts.dmSans(
            color: Palette.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            decoration: textDecoration));
  }
  // this widget used for Mid grey title texts

  Widget greyMidText({
    required String text,
  }) {
    return Text(text,
        style: GoogleFonts.dmSans(
          color: Palette.medGrey,
          fontSize: 16,
        ));
  }
  // this widget used for Normal grey text for Intec Page

  Widget greyNormalText({
    required String text,
  }) {
    return Text(text,
        style: GoogleFonts.dmSans(
          color: Palette.darkGrey,
          fontSize: 25,
        ));
  }

  // this widget used for Intro dongle text

  Widget dongle96Normal({
    required String text,
  }) {
    return Text(
      text,
      style: GoogleFonts.dongle(
        color: Palette.primary,
        fontSize: 96,
      ),
    );
  }
}
