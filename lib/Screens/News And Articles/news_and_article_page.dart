import 'package:atre_website/Screens/News%20And%20Articles/singup_page.dart';
import 'package:atre_website/Screens/BottomSheet.dart';
import 'package:atre_website/Screens/navBar.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'article_page.dart';

class NewsAndArticles extends StatefulWidget {
  const NewsAndArticles({super.key});

  @override
  State<NewsAndArticles> createState() => _NewsAndArticlesState();
}

class _NewsAndArticlesState extends State<NewsAndArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: const Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ArticlePage(),
                  SignUpPage(),
                  AtreBottomSheet() 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
