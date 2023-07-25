import 'package:flutter/material.dart';

import '../../Widgets/navBar.dart';
import 'IntroScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [IntroScreen()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
