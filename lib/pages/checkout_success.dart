import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:furniture_app/widgets/main_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Order".text.bold.make(),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.clear)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            10.h.heightBox,
            Image.asset(
              'assets/images/order-placed.png',
            ).centered(),
            4.h.heightBox,
            "Your order has been placed!".text.xl2.bold.make(),
            1.h.heightBox,
            "The order will be forwarded to seller".text.make(),
            "Please check status of your order in".text.make(),
            "the transaction list.".text.make(),
            8.h.heightBox,
            const OrderDetails(),
            3.h.heightBox,
            MainButton(
                text: "Check order",
                function: () {
                  Navigator.pushNamed(context, MyRoutes.orderDetails);
                })
          ],
        ),
      ),
    );
  }
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 6.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(190, 232, 244, 249),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey[400]!))),
            child: Align(
                    alignment: Alignment.centerLeft,
                    child: "Order detail".text.xl.bold.make())
                .p(8),
          ),
          Container(
            height: 5.h,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey[400]!))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Order number".text.make(),
                "#JK12dasd".text.bold.make()
              ],
            ).p(8),
          ),
          Container(
            height: 4.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ["Amount paid".text.make(), "\$875".text.bold.make()],
            ).p(8),
          )
        ],
      ),
    );
  }
}
