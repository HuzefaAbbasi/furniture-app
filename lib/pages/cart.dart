import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/models/checkout_item_model.dart';
import 'package:furniture_app/widgets/navbar_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:swipeable_tile/swipeable_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class YourCart extends StatefulWidget {
  const YourCart({super.key});

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Your cart".text.bold.make(),
        centerTitle: true,
        actions: [const Icon(Icons.bookmark).p(16)],
      ),
      body: Column(
        children: [
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "2 items".text.xl.bold.make(),
              Icon(
                Icons.info,
                color: Colors.teal[200],
              )
            ],
          ).p(16),
          const CartItemsList().p(16),
          1.h.heightBox,
          const CartBottomBox(),
        ],
      ),
      bottomNavigationBar: const NavBarButton(
        title: "Checkout",
      ),
    );
  }
}

class CartBottomBox extends StatelessWidget {
  const CartBottomBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 29, 42, 68),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const UseVoucherCode(),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Total".text.xl.bold.white.make(),
                "\$900".text.xl2.bold.white.make()
              ],
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Subtotal".text.white.make(),
                "\$900".text.white.make()
              ],
            ),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Discount".text.white.make(),
                "-\$0".text.white.make()
              ],
            )
          ],
        ).p(16),
      ),
    );
  }
}

class UseVoucherCode extends StatelessWidget {
  const UseVoucherCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(188, 89, 108, 147),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/percentage.png").p(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Use voucher code".text.white.xl.bold.make(),
                "You have 2 voucher code".text.white.make()
              ],
            ),
          ),
          const Icon(
            CupertinoIcons.forward,
            color: Colors.orange,
          ).p(16)
        ],
      ),
    );
  }
}

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

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
        child: SwipeableTile.swipeToTriggerCard(
          horizontalPadding: 0,
          verticalPadding: 0,
          shadow: const BoxShadow(color: Colors.transparent),
          key: UniqueKey(),
          borderRadius: 12,
          color: Colors.transparent,
          onSwiped: (direction) {},
          direction: SwipeDirection.startToEnd,
          backgroundBuilder: (context, direction, progress) {
            if (direction == SwipeDirection.startToEnd) {
              return Container(
                color: Colors.cyan[200],
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ).p(56),
                ),
              );
            } else {
              return Container();
            }
          },
          child: Container(
            height: 16.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(76, 158, 158, 158)),
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(190, 232, 244, 249),
            ),
            child: Row(
              children: [
                Image(
                  image: item.image,
                  width: 32.w,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                item.name.text.xl.bold.make(),
                                "Variant: ${item.variant}"
                                    .text
                                    .gray500
                                    .semiBold
                                    .make(),
                              ],
                            ),
                            "\$100".text.xl2.bold.make()
                          ],
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            PlusMinusButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              function: () {},
                            ),
                            5.w.widthBox,
                            "4".text.xl.semiBold.make(),
                            5.w.widthBox,
                            PlusMinusButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              function: () {},
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

class PlusMinusButton extends StatelessWidget {
  final Icon icon;
  final Function function;
  const PlusMinusButton({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5.h,
      width: 4.5.h,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        onTap: () => function(),
        child: icon,
      ),
    );
  }
}
