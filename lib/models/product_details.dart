import 'package:furniture_app/models/dimensions.dart';

class ProductDetails {
  String productName;
  int stock;
  double price;
  String image;
  String category;
  int itemSold;
  List<String> keyFeatures;
  String description;
  String color;
  Dimensions productSize;

  ProductDetails({
    required this.productName,
    required this.stock,
    required this.price,
    required this.image,
    required this.category,
    required this.itemSold,
    required this.keyFeatures,
    required this.description,
    required this.color,
    required this.productSize,
  });
}
