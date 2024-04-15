import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/models/category_icon.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/utils/routes.dart';
import 'package:furniture_app/widgets/category_page_widgets/product.dart';
import 'package:furniture_app/widgets/navbar.dart';
import 'package:furniture_app/widgets/other_widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherWidgets.makeMainAppBar(context),
      body: SingleChildScrollView(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            Carousel(),
            CategoriesSection(),
            ProductsSection(),
          ],
        ).p(16),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Products".text.bold.xl.make(),
              "view all >".text.orange500.underline.make(),
            ],
          ),
          1.h.heightBox,
          const ProductsListView(),
        ],
      ),
    );
  }
}

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

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

    makeGridItem(ProductModel product) {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, MyRoutes.productDetails),
        child: Container(
          height: 26.h,
          width: 44.w,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(224, 190, 188, 188), width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Container(
                height: 20.h,
                width: 44.w,
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
        ).pOnly(right: 8),
      );
    }

    return SizedBox(
      height: 26.h,
      child: ListView.builder(
          itemCount: productsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => makeGridItem(productsList[index])),
    );
  }
}

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Categories".text.xl.bold.make(),
            GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, MyRoutes.categoryPage),
                child: "view all >".text.underline.orange500.make())
          ],
        ),
        1.h.heightBox,
        const CategoriesRowSection()
      ],
    );
  }
}

class CategoriesRowSection extends StatelessWidget {
  const CategoriesRowSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryIcon(title: "Table", image: "assets/images/table-icon.png"),
      CategoryIcon(title: "Chair", image: "assets/images/chair-icon.png"),
      CategoryIcon(title: "Sofa", image: "assets/images/sofa-icon.png"),
      CategoryIcon(title: "Lamp", image: "assets/images/lamp-icon.png"),
      CategoryIcon(title: "Cabinet", image: "assets/images/cabinet-icon.png"),
    ];

    makeItem(CategoryIcon item) {
      return SizedBox(
        width: 20.w,
        // height: double.infinity,
        child: Column(
          children: [
            1.h.heightBox,
            CircleAvatar(
              backgroundColor: const Color.fromARGB(190, 232, 244, 249),
              child: Image.asset(item.image),
            ),
            1.h.heightBox,
            item.title.text.make(),
          ],
        ),
      );
    }

    return SizedBox(
        height: 12.h,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => makeItem(categories[index])));
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final images = [
    "assets/images/banner1.png",
    "assets/images/banner1.png",
    "assets/images/banner1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,
      width: double.infinity,
      child: GFCarousel(
          autoPlay: true,
          // pagerSize: 10,
          viewportFraction: 1.0,
          activeIndicator: Colors.orange,
          passiveIndicator: Colors.grey[300],
          hasPagination: true,
          enlargeMainPage: true,
          items: images.map((image) {
            return Image.asset(
              image,
              width: double.infinity,
            );
          }).toList()),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 29, 42, 68),
          borderRadius: BorderRadius.circular(12)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeHeaderItem(
            image: AssetImage('assets/images/wallet.png'),
            title: "Wallet",
            value: "\$27,00",
          ),
          HomeHeaderItem(
            image: AssetImage('assets/images/points.png'),
            title: "Points",
            value: "3,500",
          ),
          HomeHeaderItem(
            image: AssetImage('assets/images/vouchers.png'),
            title: "Vouchers",
            value: "2",
          ),
        ],
      ).p(16),
    );
  }
}

class HomeHeaderItem extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String value;
  const HomeHeaderItem(
      {super.key,
      required this.title,
      required this.value,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 23.w,
      child: Row(
        children: [
          Image(
            image: image,
            height: 30,
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title.text.gray400.make(),
              value.text.white.xl.bold.make()
            ],
          )
        ],
      ),
    );
  }
}
