import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/dimensions.dart';
import 'package:furniture_app/models/product_details.dart';
import 'package:furniture_app/utils/colors.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetails product = ProductDetails(
      productName: 'Linnon',
      stock: 20,
      price: 299,
      image: 'assets/images/linnon_detail.png',
      category: 'Table',
      itemSold: 5,
      keyFeatures: [
        'Solid wood construction',
        'Easy to assemble',
        'Modern design'
      ],
      description:
          'This table is made of high-quality wood, Great for your workspace. Having white color it will be boost your productivity.',
      color: 'White',
      productSize: Dimensions(
        widthCM: 150,
        heightCM: 75,
        lengthCM: 90,
        widthInches: 59.06,
        heightInches: 29.53,
        lengthInches: 35.43,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.secondaryColor,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Badge(smallSize: 12, child: Icon(Icons.shopping_cart)))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ImageBox(product: product), const BelowImageBox()]),
      ),
    );
  }
}

class BelowImageBox extends StatelessWidget {
  const BelowImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      color: MyColors.secondaryColor,
      child: Row(
        children: [
          4.w.widthBox,
          const CategoryPill(),
          58.w.widthBox,
          BookmarkiconBox(),
          1.h.heightBox,
        ],
      ),
    );
  }
}

class BookmarkiconBox extends StatelessWidget {
  const BookmarkiconBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 5.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: MyColors.greyColor)),
      child: const Icon(
        CupertinoIcons.bookmark_fill,
        color: Colors.cyan,
      ),
    );
  }
}

class CategoryPill extends StatelessWidget {
  const CategoryPill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5.h,
      width: 22.w,
      decoration: BoxDecoration(
          color: MyColors.navyBlue, borderRadius: BorderRadius.circular(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/category_table.png'),
          "Table".text.white.bold.make()
        ],
      ).p(12),
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    super.key,
    required this.product,
  });

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.secondaryColor,
      height: 30.h,
      width: double.infinity,
      child: Center(
        child: Image.asset(
          product.image,
        ),
      ),
    );
  }
}
