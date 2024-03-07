import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBarButton extends StatelessWidget {
  final String title;
  const NavBarButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MyRoutes.checkoutPayment),
      child: Container(
        height: 8.h,
        width: double.infinity,
        color: Colors.orange,
        child: title.text.xl.bold.white.makeCentered(),
      ),
    );
  }
}
