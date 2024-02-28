import 'package:flutter/material.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/pages/category_page.dart';
import 'package:furniture_app/pages/home.dart';
import 'package:furniture_app/pages/onboarding.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture App',
        theme: ThemeData(
          searchBarTheme: const SearchBarThemeData(
              overlayColor: MaterialStatePropertyAll(Colors.white)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        routes: {
          MyRoutes.home: (context) => const Home(),
          MyRoutes.categoryPage: (context) => const CategoryPage(),
          MyRoutes.onBoarding: (context) => const OnBoarding(),
        },
        home: const Home(),
      );
    });
  }
}
