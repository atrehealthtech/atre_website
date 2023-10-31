import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/hoverContainer.dart';
import 'package:atre_website/Widgets/onHover.dart';
import 'package:flutter/material.dart';

final myWidgets = MyWidgets();

class MyWidgets {
  // this widget used for text field
  Widget myTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 25),
      child: SizedBox(
        height: 37,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.greyText),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // this widget used for describe text field
  Widget describeField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 25),
      child: SizedBox(
        height: 90,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.greyText),
              ),
            ),
          ),
        ),
      ),
    );
  }

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
        style: TextStyle(
            color: Palette.primary,
            fontSize: 43,
            fontFamily: "DancingScript",
            fontWeight: FontWeight.bold));
  }

  // this widget used for lib/Screens/Career/centerCircleScreen.dart
  Widget dancingMidText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 36,
            fontFamily: "DancingScript",
            fontWeight: FontWeight.w200));
  }
  // this widget used for normal subtitle texts

  Widget subTitleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.greyText,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }

  // this widget used for normal subtitle texts

  Widget subTitleGreyText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.grey,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }

  // this widget used for medium black texts

  Widget midBlackText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.greyText,
            fontSize: 17,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w600));
  }

  // this widget used for medium black texts

  Widget dmSans17Bold({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.greyText,
            fontSize: 17,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }
  // this widget used for medium green texts

  Widget greenDmSans17Bold({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.primary,
            fontSize: 17,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
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
  // this widget is Green button

  Widget greenButton({required String text, required Function onTap}) {
    return InkWell(
      onTap: onTap as void Function(),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          decoration: BoxDecoration(
              color: Palette.primary, borderRadius: BorderRadius.circular(8)),
          child: Text(text,
              style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w400))),
    );
  }

  // this widget used for article page submit button
  Widget submitButton({required String text, required Function onTap}) {
    return InkWell(
      onTap: onTap as void Function(),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: BoxDecoration(
              color: Palette.primary, borderRadius: BorderRadius.circular(8)),
          child: Text(text,
              style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w400))),
    );
  }

  // this widget used for bold green title texts

  Widget greenTitleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.primary,
            wordSpacing: 2,
            fontSize: 32,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }
  // this widget used for medium bold green subtitle texts

  Widget greenSubTitleText({required String text, TextDecoration? decoration}) {
    return Text(text,
        style: TextStyle(
            color: Palette.primary,
            decoration: decoration,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }

  // this widget used for medium green subtitle texts

  Widget greenMiniText({required String text, TextDecoration? decoration}) {
    return Text(text,
        style: TextStyle(
            color: Palette.primary,
            decoration: decoration,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }
  // this widget used for medium green Medium texts

  Widget greenMidText({
    required String text,
  }) {
    return Text(text,
        style: TextStyle(
            color: Palette.primary,
            fontSize: 24,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w600));
  }
  // this widget used for bold black title texts

  Widget blackTitleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 20,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w500));
  }
  // this widget used for bold black title texts in Intec Text Page

  Widget blackTitle({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 50,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w500));
  }
  // this widget used for bold black title texts

  Widget miniBlackTitleText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 15,
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold));
  }
  // this widget used for bold black title texts

  Widget boldBlackText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 25,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w600));
  }
  // this widget used for bold black title texts

  Widget boldBlackMidText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 20,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w600));
  }
  // this widget used for normal white title texts

  Widget whiteTitleText({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text,
          style: TextStyle(
              color: Palette.white,
              fontSize: 15,
              fontFamily: "DMSans",
              fontWeight: FontWeight.w500)),
    );
  }
  // this widget used for Mid White text

  Widget whiteMidText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.white,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }
  // this widget used for Mid White text

  Widget whiteSmallText({required String text}) {
    return Text(text,
        style: TextStyle(
            color: Palette.white,
            fontSize: 13,
            fontFamily: "DMSans",
            fontWeight: FontWeight.normal));
  }
  // this widget used for Mid White text

  Widget hoverWhiteText({required String text}) {
    return OnHover(
      builder: (isHovered) => Text(text,
          style: TextStyle(
              color: !isHovered ? Palette.white : Palette.primary,
              fontSize: 16,
              fontFamily: "DMSans",
              fontWeight: FontWeight.normal)),
    );
  }
  // this widget used for Mid black title texts

  Widget blackMidText({required String text, TextDecoration? textDecoration}) {
    return Text(text,
        style: TextStyle(
            color: Palette.black,
            fontSize: 16,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w500,
            decoration: textDecoration));
  }
  // this widget used for Mid grey title texts

  Widget greyMidText({
    required String text,
  }) {
    return Text(text,
        style: TextStyle(
          color: Palette.darkGrey,
          fontSize: 16,
          fontFamily: "DMSans",
        ));
  }

  // this widget used for technology image container

  Widget technologyContainer(
      {required double containerHeight,
      required double containerWidth,
      required String img,
      required String titleText,
      required String subtitleText,
      required String buttonText,
      required Function onTap}) {
    return HoverTechContainer(
      builder: (isHovered) => Container(
        padding: const EdgeInsets.all(14),
        height: containerHeight,
        //  h! / 1.7,
        width: containerWidth,
        //  w! / 5,
        decoration: BoxDecoration(
          border: Border.all(color: Palette.grey),
          borderRadius: BorderRadius.circular(8),
          color: Palette.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 160,
            //  h! / 5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(img)),
                borderRadius: BorderRadius.circular(8),
                color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          myWidgets.blackTitleText(text: titleText),
          const SizedBox(
            height: 7,
          ),
          myWidgets.subTitleText(text: subtitleText),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap as void Function(),
            child: myWidgets.greenSubTitleText(
              text: buttonText,
            ),
          )
        ]),
      ),
    );
  }

  // this widget used for Article Card
  Widget articleContainer(
      {required double containerHeight,
      required double containerWidth,
      required String img,
      required String authorText,
      required String titleText,
      required String subtitleText,
      required String buttonText,
      required String nameText,
      required Function onTap,
      required Function onContainerTap}) {
    return InkWell(
      onTap: onContainerTap as void Function(),
      child: Container(
        padding: const EdgeInsets.all(14),
        height: containerHeight,
        //  h! / 1.7,
        width: containerWidth,
        //  w! / 5,
        decoration: BoxDecoration(
          border: Border.all(color: Palette.grey),
          borderRadius: BorderRadius.circular(8),
          color: Palette.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 160,
            //  h! / 5,
            decoration: BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Palette.grey),
                color: Palette.white),
          ),
          const SizedBox(
            height: 10,
          ),
          myWidgets.blackTitleText(text: titleText),
          const SizedBox(
            height: 7,
          ),
          myWidgets.subTitleText(
            text: subtitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap as void Function(),
            child: myWidgets.blackMidText(
              textDecoration: TextDecoration.underline,
              text: buttonText,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: myWidgets.miniBlackTitleText(
              text: nameText,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: myWidgets.miniBlackTitleText(
              text: authorText,
            ),
          )
        ]),
      ),
    );
  }

  // this widget used for Article Textfield

  Widget ArticleTextField() {
    return Container(
      height: 70,
      width: 200,
      child: TextFormField(
          cursorColor: Palette.black,
          cursorWidth: 0.5,
          decoration: InputDecoration(
            filled: true,
            hintText: "Enter Your Email",
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Palette.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Palette.blue)),
          )),
    );
  }
}
