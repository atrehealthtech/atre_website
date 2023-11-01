import 'package:atre_website/Screens/News%20And%20Articles/news_and_article_page.dart';
import 'package:atre_website/Routes/web_route_constants.dart';
import 'package:atre_website/Screens/AboutUs/aboutUs_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Screens/Career/career_page.dart';
import '../Screens/Home/home_page.dart';
import '../Screens/News And Articles/intec/intec_page.dart';
import '../Screens/News And Articles/nidhiprayas/nidhiprayas_page.dart';
import '../Screens/Product/productPage.dart';

class MyRoutes {
  GoRouter myRouter = GoRouter(initialLocation: "/", routes: [
    GoRoute(
      path: "/",
      name: MyRouteConstants.homeRouteName,
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: "/about_us",
      name: MyRouteConstants.aboutRouteName,
      pageBuilder: (context, state) => const MaterialPage(child: AboutUs()),
    ),
    GoRoute(
      path: "/career",
      name: MyRouteConstants.careerRouteName,
      pageBuilder: (context, state) => const MaterialPage(child: CareerPage()),
    ),
    GoRoute(
      path: "/product",
      name: MyRouteConstants.productRouteName,
      pageBuilder: (context, state) => const MaterialPage(child: ProductPage()),
    ),
    GoRoute(
      path: "/news_articles",
      name: MyRouteConstants.articlesRouteName,
      pageBuilder: (context, state) =>
          const MaterialPage(child: NewsAndArticles()),
    ),
    GoRoute(
      path: "/news_articles/1",
      name: MyRouteConstants.articleIntec,
      pageBuilder: (context, state) => const MaterialPage(child: IntecPage()),
    ),
    GoRoute(
      path: "/news_articles/2",
      name: MyRouteConstants.articleNidhiPrayas,
      pageBuilder: (context, state) =>
          const MaterialPage(child: NidhiParayasPage()),
    ),
  ]);
}
