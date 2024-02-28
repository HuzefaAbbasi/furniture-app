import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, MyRoutes.home),
        child: Container(
          height: 7.h,
          width: 7.h,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(224, 190, 188, 188), width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: const Icon(Icons.arrow_back_rounded),
        ),
      ),
    );
  }
}
