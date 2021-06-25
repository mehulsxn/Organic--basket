import 'package:e_commerce_app/models/product_model.dart';

class Category {
  final int id;
  final String title;
  final String image;
  final List<ProductModel> productModels;

  Category({ this.title,  this.id, this.image,this.productModels});
}
