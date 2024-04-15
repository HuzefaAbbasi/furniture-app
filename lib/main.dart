import 'package:flutter/material.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_details.dart';
import 'package:furniture_app/pages/cart.dart';
import 'package:furniture_app/pages/category_page.dart';
import 'package:furniture_app/pages/checkout_details.dart';
import 'package:furniture_app/pages/checkout_payment.dart';
import 'package:furniture_app/pages/checkout_processing.dart';
import 'package:furniture_app/pages/checkout_success.dart';
import 'package:furniture_app/pages/discover.dart';
import 'package:furniture_app/pages/home.dart';
import 'package:furniture_app/pages/login.dart';
import 'package:furniture_app/pages/onboarding.dart';
import 'package:furniture_app/pages/order_details.dart';
import 'package:furniture_app/pages/product_details_page.dart';
import 'package:furniture_app/pages/signup.dart';
import 'package:furniture_app/pages/splash_screen.dart';
import 'package:furniture_app/pages/vouchers.dart';
import 'package:furniture_app/pages/wishlist.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture App',
        theme: ThemeData(
          searchBarTheme: const SearchBarThemeData(
              overlayColor: MaterialStatePropertyAll(Colors.white)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        routes: {
          MyRoutes.discover: (context) => const Discover(),
          MyRoutes.home: (context) => const Home(),
          MyRoutes.categoryPage: (context) => const CategoryPage(),
          MyRoutes.onBoarding: (context) => const OnBoarding(),
          MyRoutes.splashScreen: (context) => const SplashScreen(),
          MyRoutes.wishlist: (context) => const WishList(),
          MyRoutes.login: (context) => const Login(),
          MyRoutes.signup: (context) => const Signup(),
          MyRoutes.checkoutDetail: (context) => const CheckoutDetails(),
          MyRoutes.checkoutPayment: (context) => const CheckoutPayment(),
          MyRoutes.checkoutProcessing: (context) => const CheckoutProcessing(),
          MyRoutes.checkoutSuccess: (context) => const CheckoutSuccess(),
          MyRoutes.orderDetails: (context) => const OrderDetail(),
          MyRoutes.orderDetails: (context) => const OrderDetail(),
          MyRoutes.yourCart: (context) => const YourCart(),
          MyRoutes.voucher: (context) => const Vouchers(),
          MyRoutes.productDetails: (context) => const ProductDetailsPage(),
        },
        home: const SplashScreen(),
      );
    });
  }
}
