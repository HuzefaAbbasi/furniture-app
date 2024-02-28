import 'package:flutter/material.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/pages/category_page.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final categoriesList = [
    CategoryModel(
        name: 'Table', stock: 3, image: 'assets/images/table_main.png'),
    CategoryModel(name: 'Chair', stock: 2, image: 'assets/images/chair.png'),
    CategoryModel(name: 'Sofa', stock: 3, image: 'assets/images/sofa.png'),
    CategoryModel(
        name: 'Cabinet', stock: 3, image: 'assets/images/cabinet.png'),
  ];

  categoryListItem(CategoryModel item, BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MyRoutes.categoryPage),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Container(
          height: 12.h,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromARGB(190, 232, 244, 249),
              border: Border.fromBorderSide(BorderSide(
                  color: Color.fromARGB(142, 158, 158, 158), width: 1)),
              borderRadius: BorderRadiusDirectional.all(Radius.circular(12))),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      item.name.text.xl2.bold.make(),
                      '${item.stock} products'.text.gray900.make(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 45.w,
                  child: Hero(
                    tag: item.name,
                    child: Image(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categoriesList.length,
        itemBuilder: (context, index) =>
            categoryListItem(categoriesList[index], context));
  }
}
