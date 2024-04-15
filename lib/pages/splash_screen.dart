import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MyRoutes.login);
    });
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          40.h.heightBox,
          "FURN".text.xl4.bold.make(),
          2.h.heightBox,
          Image.asset('assets/images/splash-screen.png'),
        ],
      ),
    );
  }
}
