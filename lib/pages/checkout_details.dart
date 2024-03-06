import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/address_model.dart';
import 'package:furniture_app/models/checkout_item_model.dart';
import 'package:furniture_app/widgets/checkout_details_widgets/address_list.dart';
import 'package:furniture_app/widgets/checkout_widgets/order_summary.dart';
import 'package:furniture_app/widgets/checkout_details_widgets/payment_button.dart';
import 'package:furniture_app/widgets/checkout_details_widgets/shipment_info.dart';
import 'package:furniture_app/widgets/checkout_widgets/order_items_list.dart';
import 'package:furniture_app/widgets/checkout_details_widgets/voucher_info.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({super.key});

  @override
  State<CheckoutDetails> createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.makeCheckoutAppBar("Checkout"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              3.h.heightBox,
              "Delivery address".text.xl.bold.make(),
              1.h.heightBox,
              const AddressListView(),
              6.h.heightBox,
              "Items".text.bold.xl.make(),
              const ItemsList(),
              1.h.heightBox,
              const ShipmentInfo(),
              8.h.heightBox,
              const VoucherInfo(),
              8.h.heightBox,
              const OrderSummary(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const PaymentButton(),
    );
  }
}
