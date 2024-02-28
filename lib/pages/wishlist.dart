import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/widgets/navbar.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:furniture_app/widgets/searchbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchBar(
              hintText: "Search your wishlist", hasScanIcon: false),
          1.5.h.heightBox,
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                "0 ".text.italic.xl3.bold.make(),
                "products".text.xl.make()
              ],
            ),
          ),
          5.h.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              3.h.heightBox,
              Center(child: Image.asset('assets/images/wishlist-empty.png')),
              1.h.heightBox,
              "Your wishlist is empty".text.xl3.bold.make(),
              1.h.heightBox,
              SizedBox(
                width: 70.w,
                child:
                    "Looks like you haven't added anything to your wishlist yet"
                        .text
                        .align(TextAlign.center)
                        .gray500
                        .make(),
              ),
              2.h.heightBox,
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 7.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 127, 0),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Explore now".text.white.semiBold.xl.make(),
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                      )
                    ],
                  ).p16(),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
