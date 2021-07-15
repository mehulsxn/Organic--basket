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
              title: 'Onion', itemPrice: 10, image: 'assets/images/onion.jpg'),
          ProductModel(
              title: 'Potato',
              itemPrice: 10,
              image: 'assets/images/potato.jpeg'),
          ProductModel(
              title: 'Cabbage',
              itemPrice: 10,
              image: 'assets/images/cabbage.jpg'),
          ProductModel(
              title: 'Carrot',
              itemPrice: 10,
              image: 'assets/images/carrot.png'),
          ProductModel(
              title: 'Capsicum',
              itemPrice: 10,
              image: 'assets/images/capsicum.png'),
        ]),
    Category(
        title: 'fruits',
        id: 2,
        image: 'assets/images/fruits.jpg',
        productModels: [
          ProductModel(
              title: 'Kiwi', itemPrice: 10, image: 'assets/images/kiwi.png'),
          ProductModel(
              title: 'Orange',
              itemPrice: 10,
              image: 'assets/images/orange.png'),
          ProductModel(
              title: 'Mango', itemPrice: 10, image: 'assets/images/mango.png'),
          ProductModel(
              title: 'Pineapple',
              itemPrice: 10,
              image: 'assets/images/pineapple.png'),
          ProductModel(
              title: 'Watermelon',
              itemPrice: 10,
              image: 'assets/images/watermelon.png')
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
              title: 'Buns', itemPrice: 10, image: 'assets/images/buns.png'),
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
    Category(
        title: 'Icecream',
        id: 4,
        image: 'assets/images/icecream.jpg',
        productModels: [
          ProductModel(title: 'Vanila',itemPrice: 10,image:'assets/images/vanila.jpg' ),
          ProductModel(title: 'Chocolate',itemPrice: 10,image:'assets/images/chocolate.jpg' ),
          ProductModel(title: 'Strawberry',itemPrice: 10,image:'assets/images/strawberry.jpg' ),
          ProductModel(title: 'Candy',itemPrice: 10,image:'assets/images/candy.jpg' )
        ]),
    Category(
        title: 'bakery',
        id: 5,
        image: 'assets/images/bakery.jpg',
        productModels: [
          ProductModel(title: 'Cookies',itemPrice: 10,),
          ProductModel(title: 'Pastries',itemPrice: 10,),
          ProductModel(title: 'Chocolates',itemPrice: 10, ),
        ]),
    Category(
        title: 'milk & eggs',
        id: 6,
        image: 'assets/images/milkeggs.jpg',
        productModels: [
          ProductModel(title: 'Toned Milk',itemPrice: 10, ),
          ProductModel(title: 'Eggs',itemPrice: 10, ),
          ProductModel(title: 'Butter Milk',itemPrice: 10, ),
        ]),
    Category(
        title: 'meat',
        id: 7,
        image: 'assets/images/meat.jpg',
        productModels: [
          ProductModel(title: 'Red Meat',itemPrice: 10),
          ProductModel(title: 'Chicken',itemPrice: 10),
          ProductModel(title: 'Boneless Chicken',itemPrice: 10 ),
        ]),
    Category(
        title: 'sea food',
        id: 8,
        image: 'assets/images/seafood.jpg',
        productModels: [
          ProductModel(title: 'fish',itemPrice: 10,),
          ProductModel(title: 'lobster',itemPrice: 10,),
          ProductModel(title: 'crabs',itemPrice: 10,),
        ]),
    Category(
        title: 'cake',
        id: 9,
        image: 'assets/images/cake.jpg',
        productModels: [
          ProductModel(title: 'Chocolate Cake',itemPrice: 10,),
          ProductModel(title: 'Fruit Cake',itemPrice: 10,),
          ProductModel(title:'Pineapple Cake',itemPrice: 10,),
        ]),
    Category(
        title: 'Soft Drink',
        id: 10,
        image: 'assets/images/coke.jpg',
        productModels: [
          ProductModel(title: 'Coca Cola' ,itemPrice: 10,),
          ProductModel(title: 'Milk Shake',itemPrice: 10,),
          ProductModel(title: 'Coffee',itemPrice: 10,),
        ]),
  ];
  static final offers = [
    Offers(
      image: 'assets/images/offer1.jpg',
    ),
    Offers(
      image: 'assets/images/offer2.jpg',
    ),
  ];
  static final popularDeals = [
    Popular(
      image: 'assets/images/popular1.jpg',
    ),
    Popular(
      image: 'assets/images/popular2.jpeg',
    ),
    Popular(
      image: 'assets/images/popular3.jpg',
    ),
    Popular(
      image: 'assets/images/fruitcake.jpg',
    ),
  ];
}
