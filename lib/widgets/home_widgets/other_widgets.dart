import 'package:flutter/material.dart';

class OtherWidgets {
  static AppBar appBar = AppBar(
    title: const Text(
      "FURN",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: const [
      Padding(
          padding: EdgeInsets.only(right: 20),
          child: Badge(smallSize: 12, child: Icon(Icons.shopping_cart)))
    ],
  );
}
