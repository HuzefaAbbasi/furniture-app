import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
