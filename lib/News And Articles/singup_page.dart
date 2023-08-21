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
      mobile: (_) => DeskTopSignUp(),
      desktop: (_) => DeskTopSignUp(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget DeskTopSignUp() {
  return Container(
    color: Palette.paleGreen,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
    padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
    child: Row(children: [
      Expanded(
        child: Column(
          children: [
            myWidgets.boldBlackMidText(text: articleString.boldText),
            const SizedBox(
              height: 20,
            ),
            myWidgets.midBlackText(text: articleString.signUpParaText),
          ],
        ),
      ),
    ]),
  );
}
