import 'package:flutter/material.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productsList = [
      ProductModel(
          image: 'assets/images/linnon.png', name: 'Linnon', price: 100),
      ProductModel(
          image: 'assets/images/torald.png', name: 'Torald', price: 175),
      ProductModel(
          image: 'assets/images/meltorp.png', name: 'Meltorp', price: 300),
    ];

    _makeGridItem(ProductModel product) {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, MyRoutes.productDetails),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(224, 190, 188, 188), width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Container(
                height: 15.h,
                width: 30.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.cover)),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.bookmark,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(190, 232, 244, 249),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              product.name.text.xl.bold.make(),
                              "\$${product.price}".text.make()
                            ]),
                        Container(
                          height: 4.h,
                          width: 4.h,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GridView.builder(
          itemCount: productsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 15),
          itemBuilder: (context, index) => _makeGridItem(productsList[index])),
    ));
  }
}
