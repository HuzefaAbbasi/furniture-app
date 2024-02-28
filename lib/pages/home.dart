import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/widgets/home_widgets/categorylist.dart';
import 'package:furniture_app/widgets/home_widgets/other_widgets.dart';
import 'package:furniture_app/widgets/home_widgets/roomslist.dart';
import 'package:furniture_app/widgets/home_widgets/searchbar.dart';
import 'package:furniture_app/widgets/home_widgets/navbar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final list1 = [
    {'Living': 'assets/images/living.png'},
    {'Kitchen': 'assets/images/kitchen.png'},
    {'Dining': 'assets/images/dining.png'},
  ];

  final list2 = [
    {'Bedroom': 'assets/images/bedroom.png'},
    {'Bath': 'assets/images/bathroom.png'},
    {'workspace': 'assets/images/workspace.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchBar(),
          SizedBox(
            height: 1.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Rooms".text.xl.bold.make(),
                  1.h.heightBox,
                  RoomsList(
                    list: list1,
                  ),
                  1.h.heightBox,
                  RoomsList(list: list2),
                  3.h.heightBox,
                  "Categories".text.xl.bold.make(),
                  1.h.heightBox,
                  Expanded(child: CategoriesList()),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
