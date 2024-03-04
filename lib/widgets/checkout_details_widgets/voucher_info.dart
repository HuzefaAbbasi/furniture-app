import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class VoucherInfo extends StatelessWidget {
  const VoucherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Voucher".text.xl.bold.make(),
            GestureDetector(
              onTap: () {},
              child: "view all >".text.bold.underline.orange500.make(),
            )
          ],
        ),
        1.h.heightBox,
        const VoucherItem(),
      ],
    );
  }
}

class VoucherItem extends StatefulWidget {
  const VoucherItem({super.key});

  @override
  State<VoucherItem> createState() => _VoucherItemState();
}

class _VoucherItemState extends State<VoucherItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(76, 158, 158, 158)),
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(190, 232, 244, 249),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/percentage.png').p(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Use voucher code".text.bold.xl.make(),
                "You have 2 voucher codes".text.make()
              ],
            ).p(8),
          ),
          const Icon(
            CupertinoIcons.forward,
            color: Colors.orange,
          ).p(12)
        ],
      ),
    );
  }
}
