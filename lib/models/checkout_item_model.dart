import 'dart:ui';

import 'package:flutter/material.dart';

class CheckoutItemModel {
  final AssetImage image;
  final String name;
  final String variant;
  final int quantity;
  final int price;

  CheckoutItemModel(
      {required this.image,
      required this.name,
      required this.variant,
      required this.quantity,
      required this.price});
}
