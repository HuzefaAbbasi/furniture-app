import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/home_widgets/other_widgets.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.appBar,
    );
  }
}
