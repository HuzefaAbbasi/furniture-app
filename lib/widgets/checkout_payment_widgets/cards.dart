import 'package:flutter/material.dart';
import 'package:furniture_app/models/card_model.dart';
import 'package:furniture_app/widgets/checkout_payment_widgets/hide_show_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    final cards = [
      CardModel(
          isMasterCard: true,
          accountNumber: "1456328542338764",
          expiry: "17/28",
          cardHolderName: "Willian Peter",
          true),
      CardModel(
          isMasterCard: false,
          accountNumber: "1456118542343764",
          expiry: "12/26",
          cardHolderName: "John Smith",
          false)
    ];

    List<String> splitCardNumber(String cardNumber) {
      List<String> parts = [];
      for (int i = 0; i < cardNumber.length; i += 4) {
        parts.add(cardNumber.substring(i, i + 4));
      }
      return parts;
    }

    makeCardItem(CardModel item) {
      final splitedNumber = splitCardNumber(item.accountNumber);
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 80.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: (item.isMasterCard)
                      ? const AssetImage(
                          'assets/images/mastercard-bg-design.png')
                      : const AssetImage('assets/images/visa-bg-design.png'),
                  fit: BoxFit.cover),
              color: (item.isActive)
                  ? Colors.grey[100]
                  : const Color.fromARGB(190, 232, 244, 249),
              border: (item.isActive)
                  ? Border.all(width: 1, color: Colors.purple)
                  : Border.all(
                      width: 1, color: const Color.fromARGB(85, 158, 158, 158)),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (item.isActive)
                        ? Image.asset('assets/images/mastercard-logo.png')
                        : Image.asset('assets/images/visa-logo.png'),
                    4.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        splitedNumber[0].text.xl2.bold.make(),
                        splitedNumber[1].text.xl2.bold.make(),
                        splitedNumber[2].text.xl2.bold.make(),
                        splitedNumber[3].text.xl2.bold.make(),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 7.h,
                decoration: BoxDecoration(
                    color: (item.isMasterCard)
                        ? Colors.deepPurple[300]
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      (item.isMasterCard)
                          ? item.expiry.text.xl.white.make()
                          : item.expiry.text.xl.make(),
                      (item.isMasterCard)
                          ? item.cardHolderName.text.xl.white.make()
                          : item.cardHolderName.text.xl.make()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return SizedBox(
      height: 26.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Credit/Debit card".text.xl.bold.make(),
              HideShowButton(
                icon: Icons.keyboard_arrow_up,
                action: () {},
              )
            ],
          ),
          2.h.heightBox,
          Expanded(
              child: ListView.builder(
                  itemCount: cards.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => makeCardItem(cards[index]))),
        ],
      ),
    );
  }
}
