import 'package:flutter/material.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({
    super.key,
    required this.item,
  });

  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              item.name.text.xl3.bold.make(),
              '${item.stock} products'.text.xl.gray900.make(),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: SizedBox(
              child: Hero(
                tag: item.name,
                child: Image(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
