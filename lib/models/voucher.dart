import 'package:flutter/material.dart';

class VoucherModel {
  final AssetImage image;
  final String title;
  final String date;
  final int discountPercentage;

  VoucherModel(
      {required this.image,
      required this.title,
      required this.date,
      required this.discountPercentage});
}
