import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HideShowButton extends StatefulWidget {
  final IconData icon;
  final Function action;
  const HideShowButton({
    super.key,
    required this.icon,
    required this.action,
  });

  @override
  State<HideShowButton> createState() => _HideShowButtonState();
}

class _HideShowButtonState extends State<HideShowButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.action();
      },
      child: Container(
        height: 2.5.h,
        width: 2.5.h,
        decoration: BoxDecoration(
            color: Colors.teal[300], borderRadius: BorderRadius.circular(8)),
        child: Icon(
          widget.icon,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}
