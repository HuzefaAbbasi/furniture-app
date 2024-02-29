import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/address_model.dart';
import 'package:furniture_app/models/checkout_item_model.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
              "Shipment".text.xl.bold.make()
            ],
          ),
        ),
      ),
    );
  }
}

class AddressListView extends StatelessWidget {
  const AddressListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final addressList = [
      AddressModel(
        true,
        icon: const Icon(Icons.home),
        title: "Home",
        address: "St. Jenderal Sudirman, South Jakarta, Jakarta 129920",
        contact: "+92 3328187814",
      ),
      AddressModel(false,
          icon: const Icon(CupertinoIcons.building_2_fill),
          title: "Office",
          address: "St. Jenderal Sudirman, South Jakarta, Jakarta 129920",
          contact: "+92 3328187814")
    ];

    getAddressItem(AddressModel address) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 18.h,
          width: 80.w,
          decoration: BoxDecoration(
              color: (address.isActive)
                  ? Colors.grey[100]
                  : const Color.fromARGB(190, 232, 244, 249),
              border: (address.isActive)
                  ? Border.all(width: 1, color: Colors.purple)
                  : Border.all(
                      width: 1, color: const Color.fromARGB(85, 158, 158, 158)),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, bottom: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            address.icon,
                            1.w.widthBox,
                            address.title.text.xl2.bold.make(),
                          ],
                        ),
                        1.5.h.heightBox,
                        address.address.text.gray500.make(),
                        1.h.heightBox,
                        address.contact.text.gray500.make()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: double.infinity,
                width: 30.w,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  child: Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return SizedBox(
      height: 19.h,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: addressList.length,
          itemBuilder: (context, index) => getAddressItem(addressList[index])),
    );
  }
}

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
