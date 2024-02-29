import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon leadingIcon;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: leadingIcon,
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                width: 1, color: Color.fromARGB(224, 190, 188, 188))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 1, color: Colors.blue)),
      ),
    );
  }
}

class PictureBox extends StatelessWidget {
  const PictureBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Welcome to".text.xl3.semiBold.make(),
              "FURN".text.xl4.bold.make()
            ],
          ),
          Image.asset('assets/images/login-chair.png')
        ],
      ),
    ));
  }
}
