import 'package:e_commerce_app/models/models.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/widgets/popularitem.dart';
import 'package:flutter/material.dart';
import '../widgets/offer.dart';

class Data {
  static final categories = [
    Category(
        title: 'vegetables',
        id: 1,
        image: 'assets/images/vegetable.jpg',
        productModels: [
          ProductModel(
              title: 'Onion',
              itemPrice: 10,
              image:
                  'assets/images/onion.jpg'),
          ProductModel(
              title: 'Potato',
              itemPrice: 10,
              image:
                  'assets/images/potato.jpeg'),
          ProductModel(
              title: 'Cabbage',
              itemPrice: 10,
              image: 'assets/images/cabbage.jpg'),
          ProductModel(
              title: 'Carrot',
              itemPrice: 10,
              image:
                  'assets/images/carrot.png'),
          ProductModel(
              title: 'Capsicum',
              itemPrice: 10,
              image:
                  'assets/images/capsicum.png'),
        ]),
    Category(
        title: 'fruits',
        id: 2,
        image: 'assets/images/fruits.jpg',
        productModels: [
          ProductModel(
              title: 'Kiwi',
              itemPrice: 10,
              image:
                  'assets/images/kiwi.png'),
          ProductModel(
              title: 'Orange',
              itemPrice: 10,
              image:
                  'assets/images/orange.png'),
          ProductModel(
              title: 'Mango',
              itemPrice: 10,
              image:
                  'assets/images/mango.png'),
          ProductModel(
              title: 'Pineapple',
              itemPrice: 10,
              image:
                  'assets/images/pineapple.png'),
          ProductModel(
              title: 'Watermelon',
              itemPrice: 10,
              image:
                  'assets/images/watermelon.png')
        ]),
    Category(
        title: 'breads',
        id: 3,
        image: 'assets/images/breads.jpg',
        productModels: [
          ProductModel(
              title: 'Brown Bread',
              itemPrice: 10,
              image: 'assets/images/brownbread.png'),
          ProductModel(
              title: 'Buns',
              itemPrice: 10,
              image: 'assets/images/buns.png'),
          ProductModel(
              title: 'Wheat Bread',
              itemPrice: 10,
              image: 'assets/images/wheatbread.png'),
          ProductModel(
              title: 'Oats Bread',
              itemPrice: 10,
              image: 'assets/images/oatbread.png'),
          ProductModel(
              title: 'Milk Bread',
              itemPrice: 10,
              image: 'assets/images/milkbread.jpg'),
        ]),
    Category(title: 'Icecream', id: 4, image: 'assets/images/icecream.jpg'),
    Category(
        title: 'bakery',
        id: 5,
        image: 'assets/images/bakery.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'milk & eggs',
        id: 6,
        image: 'assets/images/milkeggs.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(title: 'meat', id: 7, image: 'assets/images/meat.jpg'),
    Category(title: 'sea food', id: 8, image: 'assets/images/seafood.jpg'),
    Category(title: 'cake', id: 9, image: 'assets/images/cake.jpg'),
    Category(title: 'Soft Drink', id: 10, image: 'assets/images/coke.jpg'),
  ];
  static final offers = [
    Offers(),
    Offers(),
    Offers(),
    Offers(),
    Offers(),
  ];
  static final popularDeals = [
    Popular(),
    Popular(),
    Popular(),
    Popular(),
    Popular(),
  ];
}
