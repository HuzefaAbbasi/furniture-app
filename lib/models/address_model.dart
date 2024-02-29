import 'package:flutter/material.dart';

class AddressModel {
  final Icon icon;
  final String title;
  final String address;
  final String contact;
  final bool isActive;

  AddressModel(this.isActive,
      {required this.icon,
      required this.title,
      required this.address,
      required this.contact});
}
