import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class OtherWidgets {
  static makeMainAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "FURN",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, MyRoutes.checkoutDetail),
          child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Badge(smallSize: 12, child: Icon(Icons.shopping_cart))),
        )
      ],
    );
  }

  static makeCheckoutAppBar(String title) {
    return AppBar(
      title: title.text.xl2.bold.make(),
      centerTitle: true,
      leading: const Icon(Icons.arrow_back),
    );
  }
}
