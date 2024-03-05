import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/card_model.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/cards.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/digital_wallet.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/payment_navbar.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/payment_summary.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slider_button/slider_button.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutPayment extends StatefulWidget {
  const CheckoutPayment({super.key});

  @override
  State<CheckoutPayment> createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.makeCheckoutAppBar("Payment"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Cards(),
            3.h.heightBox,
            const DigitalWallet(),
            const PaymentSummary(),
          ],
        ).p(16),
      ),
      bottomNavigationBar: const PaymentNavBar(),
    );
  }
}
