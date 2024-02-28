import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/back_button.dart';
import 'package:furniture_app/widgets/main_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(children: [
        Container(
          height: 36.h,
          width: double.infinity,
          color: const Color.fromARGB(190, 232, 244, 249),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              6.h.heightBox,
              const MyBackButton(),
              1.h.heightBox,
              const PictureBox()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              3.h.heightBox,
              CustomTextField(
                hintText: "Enter email",
                leadingIcon: const Icon(Icons.mail),
                controller: emailController,
              ),
              2.h.heightBox,
              CustomTextField(
                  controller: passwordController,
                  hintText: "Enter password",
                  leadingIcon: const Icon(Icons.lock)),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (vallue) {}),
                      "Remember me".text.make()
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: "forgot password?".text.orange500.semiBold.make(),
                  ),
                ],
              ),
              2.h.heightBox,
              MainButton(text: "Login", function: () {}),
              3.h.heightBox,
              "Or login with".text.make(),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/google-button.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/apple-button.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/facebook-button.png'))
                ],
              )
            ],
          ),
        )
      ]),
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Already have an account?".text.make(),
            " register".text.semiBold.orange500.make().onTap(() {}),
          ],
        ),
      ),
    );
  }
}

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
