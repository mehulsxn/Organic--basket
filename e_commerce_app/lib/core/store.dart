import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  Cart cart;

  MyStore() {
    cart = Cart();
  }
}
