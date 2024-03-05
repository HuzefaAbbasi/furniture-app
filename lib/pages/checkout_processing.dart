import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutProcessing extends StatelessWidget {
  const CheckoutProcessing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/processing-order.png'),
            5.h.heightBox,
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            5.h.heightBox,
            "Processing your order...".text.white.xl.make()
          ],
        ),
      ),
    );
  }
}
