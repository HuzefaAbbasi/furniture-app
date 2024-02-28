import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/main_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/onboarding.jpg'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            Text(
              "FURN",
              style: GoogleFonts.balooBhaijaan2(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(
              height: 55.h,
            ),
            Text(
              "Tons of furniture collections",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Text(
              'We have a great range of furniture.',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Come and shop with us",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5.h,
            ),
            MainButton(
              text: "Get Started",
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}
