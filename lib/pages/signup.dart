import 'package:flutter/material.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:furniture_app/widgets/back_button.dart';
import 'package:furniture_app/widgets/custom_textfield.dart';
import 'package:furniture_app/widgets/main_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              5.h.heightBox,
              "Signup".text.xl3.bold.make(),
              5.h.heightBox,
              CustomTextField(
                hintText: "Enter email",
                leadingIcon: const Icon(Icons.mail),
                controller: emailController,
              ),
              2.h.heightBox,
              CustomTextField(
                  controller: passwordController,
                  hintText: "Enter name",
                  leadingIcon: const Icon(Icons.person)),
              2.h.heightBox,
              CustomTextField(
                  controller: passwordController,
                  hintText: "Enter password",
                  leadingIcon: const Icon(Icons.lock)),
              2.h.heightBox,
              CustomTextField(
                  controller: passwordController,
                  hintText: "Confirm password",
                  leadingIcon: const Icon(Icons.lock)),
              3.h.heightBox,
              MainButton(
                  text: "Create Account",
                  function: () {
                    Navigator.pushNamed(context, MyRoutes.login);
                  }),
              3.h.heightBox,
              "Or signup with".text.make(),
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
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Already have an account?".text.make(),
            " login".text.semiBold.orange500.make().onTap(() {
              Navigator.pushNamed(context, MyRoutes.login);
            }),
          ],
        ),
      ),
    );
  }
}
