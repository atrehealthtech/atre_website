import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/hoverContainer.dart';
import 'package:flutter/material.dart';
import '../Utils/texts.dart';

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

  // this widget used for technology image container

  Widget technologyContainer(
      {double? containerHeight,
      required double containerWidth,
      required String img,
      required String titleText,
      required String dmSans16Grey,
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
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          myTexts.blackTitleText(text: titleText),
          const SizedBox(
            height: 7,
          ),
          myTexts.dmSans16Grey(text: dmSans16Grey),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap as void Function(),
            child: myTexts.greendmSans16Grey(
              text: buttonText,
            ),
          )
        ]),
      ),
    );
  }

  // this widget used for Article Card
  Widget articleContainer(
      {double? containerHeight,
      double? containerWidth,
      required String img,
      required String authorText,
      required String titleText,
      required String dmSans16Grey,
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
          myTexts.blackTitleText(text: titleText),
          const SizedBox(
            height: 7,
          ),
          myTexts.dmSans16Grey(
            text: dmSans16Grey,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap as void Function(),
            child: myTexts.blackMidText(
              textDecoration: TextDecoration.underline,
              text: buttonText,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: myTexts.miniBlackTitleText(
              text: nameText,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: myTexts.miniBlackTitleText(
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
