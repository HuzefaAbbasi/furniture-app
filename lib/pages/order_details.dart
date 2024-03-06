import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:furniture_app/widgets/checkout_widgets/order_items_list.dart';
import 'package:furniture_app/widgets/checkout_widgets/order_summary.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.makeCheckoutAppBar("Order Detail"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OrderStatus(),
                  2.h.heightBox,
                  const InvoiceNoAndDate(),
                  7.h.heightBox,
                  "Purchase Item".text.xl.bold.make(),
                  const ItemsList(),
                  1.h.heightBox,
                ],
              ),
            ),
            const ShippingInfoOrderDetails().p(16),
            SizedBox(
              width: double.infinity,
              // height: 20.h,
              child: Image.asset(
                "assets/images/map-zoomed-out.png",
                fit: BoxFit.cover,
              ),
            ),
            6.h.heightBox,
            const OrderSummary().p(16),
            const CancelButton().p(16),
          ],
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MyRoutes.checkoutPayment),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(190, 232, 244, 249),
            borderRadius: BorderRadius.circular(12)),
        height: 8.h,
        width: double.infinity,
        child: Center(child: "Cancel Order".text.xl.bold.make()),
      ),
    );
  }
}

class ShippingInfoOrderDetails extends StatelessWidget {
  const ShippingInfoOrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Shipping information".text.bold.xl.make(),
        1.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 6.h,
              width: 18.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.grey[400]!)),
              child: Center(
                child: Image.asset(
                  "assets/images/UPS.png",
                  height: 35,
                  width: 35,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                "Home".text.xl.bold.make(),
                "St. Jenderal Sudirman, South".text.make(),
                "Jakarta, 12390".text.make()
              ],
            ),
          ],
        ),
        1.h.heightBox
      ],
    );
  }
}

class InvoiceNoAndDate extends StatelessWidget {
  const InvoiceNoAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Invoice number".text.make(),
            "#JKl314314".text.bold.make()
          ],
        ),
        1.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Order date".text.make(), "31 July 2023".text.make()],
        )
      ],
    );
  }
}

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Image.asset('assets/images/processing-order-icon.png'),
          5.w.widthBox,
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              "Processing Order".text.white.bold.xl.make(),
              "Orders will be recieved on 3 august 2023".text.white.make()
            ]),
          )
        ],
      ).p(16),
    );
  }
}
