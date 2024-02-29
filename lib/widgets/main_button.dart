import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function? function;
  const MainButton({
    super.key,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (function != null) {
          function!();
        }
      },
      child: Container(
        width: 90.w,
        height: 8.h,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        )),
      ),
    );
  }
}
