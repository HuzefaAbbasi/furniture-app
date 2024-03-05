import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentSummaryItem extends StatelessWidget {
  final String title;
  final String amount;
  const PaymentSummaryItem({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [title.text.make(), "\$$amount".text.make()],
    );
  }
}

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Payment summary".text.xl.bold.make(),
        2.h.heightBox,
        const PaymentSummaryItem(
          title: "Total",
          amount: "900",
        ),
        1.h.heightBox,
        const PaymentSummaryItem(
          title: "Payment fee",
          amount: "12",
        ),
        3.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Total payment".text.xl2.bold.make(),
            "\$917".text.xl2.extraBold.make(),
          ],
        ),
        4.h.heightBox,
      ],
    );
  }
}
