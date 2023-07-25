import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

final myWidgets = MyWidgets();

class MyWidgets {
  // this widget used for bold title texts
  Widget titleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 43,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }
  // this widget used for normal subtitle texts

  Widget subTitleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.greyText,
            wordSpacing: 2,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }
  // this widget is contact us button

  Widget contactUsButton() {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          decoration: BoxDecoration(
              color: Palette.primary, borderRadius: BorderRadius.circular(8)),
          child: Text("Contact us",
              style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w300))),
    );
  }
}
