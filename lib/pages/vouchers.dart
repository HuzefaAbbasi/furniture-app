import 'package:flutter/material.dart';
import 'package:furniture_app/models/checkout_item_model.dart';
import 'package:furniture_app/models/voucher.dart';
import 'package:furniture_app/widgets/navbar_button.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.makeCheckoutAppBar("VoucherCodes"),
      bottomNavigationBar: const NavBarButton(title: "Use Code"),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 6.h,
          width: 6.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.cyan[300]),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "2 vouchers".text.xl.bold.make(),
          const Expanded(child: VouchersList())
        ],
      ).p(16),
    );
  }
}

class VouchersList extends StatelessWidget {
  const VouchersList({super.key});

  @override
  Widget build(BuildContext context) {
    final itemsList = [
      VoucherModel(
          image: const AssetImage('assets/images/summer-sale.png'),
          title: "Summer sale 2024",
          date: "12 May 2024",
          discountPercentage: 50),
      VoucherModel(
          image: const AssetImage('assets/images/sale.png'),
          title: "Flash sale 2024",
          date: "1 May 2024",
          discountPercentage: 30),
    ];

    makeListItem(VoucherModel item) {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: item.image,
                width: 28.w,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      item.title.text.xl.bold.make(),
                      const Divider(
                        thickness: 1,
                        color: Color.fromARGB(76, 158, 158, 158),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 20,
                          ),
                          item.date.text.make(),
                          1.w.widthBox,
                          const Icon(
                            Icons.percent,
                            size: 20,
                          ),
                          "Discount ${item.discountPercentage}%".text.make()
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
            itemCount: itemsList.length,
            itemBuilder: (context, index) => makeListItem(itemsList[index])),
      ),
    );
  }
}
