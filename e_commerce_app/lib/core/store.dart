import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {


 bool isLoading = false;
  Cart cart;

  MyStore() {
    cart = Cart();
  }
}

class ToggleLoading extends VxMutation<MyStore>{
  @override
  perform() {
    // TODO: implement perfor
    store.isLoading = !store.isLoading;
  }
  }


