import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/hide_show_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class DigitalWallet extends StatefulWidget {
  const DigitalWallet({super.key});

  @override
  State<DigitalWallet> createState() => _DigitalWalletState();
}

class _DigitalWalletState extends State<DigitalWallet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Digital wallet".text.xl.bold.make(),
            HideShowButton(
              icon: Icons.keyboard_arrow_down,
              action: () {},
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
