import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slider_button/slider_button.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentNavBar extends StatefulWidget {
  const PaymentNavBar({super.key});

  @override
  State<PaymentNavBar> createState() => _PaymentNavBarState();
}

class _PaymentNavBarState extends State<PaymentNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: double.infinity,
      color: const Color.fromARGB(255, 29, 42, 68),
      child: Center(
        child: SliderButton(
          action: () async {
            Navigator.pushNamed(context, MyRoutes.checkoutProcessing);
            return Future.value(true);
          },
          backgroundColor: const Color.fromRGBO(65, 85, 124, 0.871),
          icon: const Icon(
            CupertinoIcons.arrow_right,
            color: Colors.white,
          ),
          buttonColor: Colors.orange,
          label: "swipe to confirm order".text.white.make(),
          vibrationFlag: true,
          width: 90.w,
          alignLabel: Alignment.center,
          shimmer: false,
          buttonSize: 55,
        ),
      ),
    );
  }
}
