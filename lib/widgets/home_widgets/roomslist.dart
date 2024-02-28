import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class RoomsList extends StatelessWidget {
  final List list;
  const RoomsList({super.key, required this.list});

  roomsListItemBuilder(Map<String, String> name) {
    return Padding(
      padding: const EdgeInsets.only(right: 9.0),
      child: Container(
        height: 7.h,
        width: 40.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(name.valuesList()[0]), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Text(
            name.keysList()[0],
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => roomsListItemBuilder(list[index])),
      ),
    );
  }
}
