import 'package:atre_website/Utils/Strings.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:atre_website/Widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileSignUp(),
      desktop: (_) => DeskTopSignUp(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget DeskTopSignUp() {
  return Container(
    color: Palette.paleGreen,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
    padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 300),
    child: Row(children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myWidgets.boldBlackMidText(text: articleString.boldText),
            const SizedBox(
              height: 5,
            ),
            myWidgets.midBlackText(text: articleString.signUpParaText),
          ],
        ),
      ),
      const SizedBox(
        width: 25,
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            myWidgets.ArticleTextField(),
            const SizedBox(
              width: 25,
            ),
            myWidgets.submitButton(onTap: () {}, text: "submit")
          ],
        ),
      ),
      const SizedBox(
        width: 30,
      )
    ]),
  );
}

// ignore: non_constant_identifier_names
Widget MobileSignUp() {
  return Container();
}
