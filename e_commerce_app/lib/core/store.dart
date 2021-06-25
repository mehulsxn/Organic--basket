import 'package:e_commerce_app/models/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  List<ProductModel> allProductsInCart =[];

}


class AddProduct extends VxMutation<MyStore>{

  final ProductModel product;
  AddProduct(this.product);

  @override
  perform() {
    store.allProductsInCart.add(product);
  }
}

class RemoveProduct extends VxMutation<MyStore>{

  final ProductModel product;
  RemoveProduct(this.product);
  @override
  perform() {
    store.allProductsInCart.remove(product);
  }
}