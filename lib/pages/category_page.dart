import 'package:flutter/material.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/widgets/back_button.dart';
import 'package:furniture_app/widgets/category_page_widgets/category_details..dart';
import 'package:furniture_app/widgets/category_page_widgets/product.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final item = CategoryModel(
        name: 'Table', stock: 3, image: 'assets/images/table_main.png');
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
              CategoryDetails(item: item),
            ],
          ),
        ),
        const Products()
      ]),
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: Center(
          child: "More items coming soon".text.make(),
        ),
      ),
    );
  }
}
