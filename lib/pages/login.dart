import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:furniture_app/widgets/back_button.dart';
import 'package:furniture_app/widgets/custom_textfield.dart';
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
      body: SingleChildScrollView(
        child: Column(children: [
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
                MainButton(
                    text: "Login",
                    function: () {
                      Navigator.pushNamed(context, MyRoutes.home);
                    }),
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
      ),
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Don't have an account?".text.make(),
            " register".text.semiBold.orange500.make().onTap(() {
              Navigator.pushNamed(context, MyRoutes.signup);
            }),
          ],
        ),
      ),
    );
  }
}
