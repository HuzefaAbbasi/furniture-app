import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ShipmentInfo extends StatelessWidget {
  const ShipmentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Shipment".text.xl.bold.make(),
            GestureDetector(
              onTap: () {},
              child: "view all >".text.bold.underline.orange500.make(),
            )
          ],
        ),
        1.h.heightBox,
        const ShipmentItem(),
        // 1.h.heightBox,
        Row(
          children: [
            Checkbox(
              value: true,
              visualDensity: VisualDensity.comfortable,
              checkColor: Colors.purple,
              fillColor: const MaterialStatePropertyAll(
                  Color.fromARGB(59, 158, 158, 158)),
              focusColor: Colors.purple,
              side: MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(
                        width: 1,
                        color: Colors.purple,
                      )),
              onChanged: (val) {},
            ),
            "Shipping insurance".text.gray500.make(),
          ],
        ),
      ],
    );
  }
}

class ShipmentItem extends StatelessWidget {
  const ShipmentItem({super.key});

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
          Image.asset('assets/images/UPS.png').p(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: ["UPS".text.bold.xl.make(), "Top service".text.make()],
            ).p(8),
          ),
          Align(
            alignment: Alignment.topRight,
            child: "\$12".text.bold.xl.make(),
          ).p(12)
        ],
      ),
    );
  }
}
