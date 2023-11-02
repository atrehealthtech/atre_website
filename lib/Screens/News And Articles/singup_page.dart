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
    margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildSubmit(),
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
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.only(bottom: 10),
    color: Palette.paleGreen,
    width: double.infinity,
    child: Column(children: [
      Column(
        children: [
          myWidgets.boldBlackMidText(text: articleString.boldText),
          const SizedBox(
            height: 5,
          ),
          myWidgets.midBlackText(text: articleString.signUpParaText),
        ],
      ),
      const SizedBox(
        height: 25,
      ),
      Column(
        children: [
          Row(
            children: [
              buildSubmit(),
            ],
          ),
        ],
      ),
      const SizedBox(
        width: 30,
      )
    ]),
  );
}
// ! Widgets

Widget buildSubmit() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Email Field
        SizedBox(
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
        ),
        const SizedBox(
          width: 10,
        ),

        //  Submit button

        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Text("Submit",
                  style: TextStyle(
                      color: Palette.white,
                      fontSize: 16,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w400))),
        )
      ],
    );
