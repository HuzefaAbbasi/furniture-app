import 'package:flutter/material.dart';
import 'package:furniture_app/models/checkout_item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    final itemsList = [
      CheckoutItemModel(
          image: const AssetImage('assets/images/linnon.png'),
          name: "Linnon",
          variant: "white",
          quantity: 2,
          price: 400),
      CheckoutItemModel(
          image: const AssetImage('assets/images/langkapten.png'),
          name: "Langkapten",
          variant: "orange",
          quantity: 1,
          price: 600),
    ];

    makeListItem(CheckoutItemModel item) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 14.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(76, 158, 158, 158)),
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(190, 232, 244, 249),
          ),
          child: Row(
            children: [
              Image(image: item.image),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      item.name.text.xl.bold.make(),
                      "Variant: ${item.variant}".text.gray500.semiBold.make(),
                      "x${item.quantity}".text.semiBold.gray500.make(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: "\$${item.price}".text.xl2.bold.make(),
              ).p(15)
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: ListView.builder(
            itemCount: itemsList.length,
            itemBuilder: (context, index) => makeListItem(itemsList[index])),
      ),
    );
  }
}
