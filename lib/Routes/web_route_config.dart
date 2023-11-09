import 'package:atre_website/Screens/Blogs/news_and_article_page.dart';
import 'package:atre_website/Routes/web_route_constants.dart';
import 'package:atre_website/Screens/AboutUs/aboutUs_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Screens/Career/career_page.dart';
import '../Screens/Home/home_page.dart';
import '../Screens/Blogs/intec/intec_blog.dart';
import '../Screens/Blogs/nidhiprayas/nidhiprayas_blog.dart';
import '../Screens/Product/productPage.dart';

class MyRoutes {
  GoRouter myRouter = GoRouter(initialLocation: "/", routes: [
    // Home Route
    GoRoute(
      path: MyRouteConstants.homeRoute,
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),

    // About Us Route

    GoRoute(
      path: MyRouteConstants.aboutRoute,
      pageBuilder: (context, state) => const MaterialPage(child: AboutUs()),
    ),

    // Career Route

    GoRoute(
      path: MyRouteConstants.careerRoute,
      pageBuilder: (context, state) => const MaterialPage(child: CareerPage()),
    ),

    // Product Route

    GoRoute(
      path: MyRouteConstants.productRoute,
      pageBuilder: (context, state) => const MaterialPage(child: ProductPage()),
    ),

    // Blogs Route

    GoRoute(
      path: MyRouteConstants.blogsRoute,
      pageBuilder: (context, state) =>
          const MaterialPage(child: NewsAndArticles()),
    ),

    // Intec Blog Route

    GoRoute(
      path: MyRouteConstants.blogIntec,
      pageBuilder: (context, state) => const MaterialPage(child: IntecPage()),
    ),

    // Nidhi Prayas Blog Route

    GoRoute(
      path: MyRouteConstants.blogNidhiPrayas,
      pageBuilder: (context, state) =>
          const MaterialPage(child: NidhiParayasPage()),
    ),
  ]);
}
