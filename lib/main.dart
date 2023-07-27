import 'package:atre_website/Routes/web_route_config.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //Using for routes configuration
      routerConfig: MyRoutes().myRouter,
      // ----------------------------
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Palette.primary,
        fontFamily: 'DMSans',
        brightness: Brightness.light,
        useMaterial3: true,
      ),
    );
  }
}
