import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Order summary".text.xl.bold.make(),
        2.h.heightBox,
        const OrderSummaryItem(
          title: "Subtotal",
          amount: "900",
        ),
        1.h.heightBox,
        const OrderSummaryItem(
          title: "Shipment",
          amount: "12",
        ),
        1.h.heightBox,
        const OrderSummaryItem(
          title: "Insurance",
          amount: "5",
        ),
        1.h.heightBox,
        const OrderSummaryItem(
          title: "Discount",
          amount: "2",
        ),
        4.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Total".text.xl2.bold.make(),
            "\$917".text.xl2.extraBold.make(),
          ],
        ),
        4.h.heightBox,
      ],
    );
  }
}

class OrderSummaryItem extends StatelessWidget {
  final String title;
  final String amount;
  const OrderSummaryItem({
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
