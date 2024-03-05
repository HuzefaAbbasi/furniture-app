import 'package:flutter/material.dart';

class CardModel {
  final bool isMasterCard;
  final String accountNumber;
  final String expiry;
  final String cardHolderName;
  final bool isActive;

  CardModel(this.isActive,
      {required this.isMasterCard,
      required this.accountNumber,
      required this.expiry,
      required this.cardHolderName});
}
