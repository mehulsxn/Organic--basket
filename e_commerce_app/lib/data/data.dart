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
        image:
            'assets/images/vegetable.jpg',
        productModels: [
          ProductModel(
              title: 'Onion',
              itemPrice: 10,
              image:
                  'https://imagevars.gulfnews.com/2019/09/20/190920-onion-_16d4fa56edd_large.jpg'),
          ProductModel(
              title: 'Potato',
              itemPrice: 10,
              image:
                  'https://miro.medium.com/fit/c/1360/1360/2*QEqGRY6ZGABbzlXg7ra1Sg.jpeg'),
          ProductModel(
              title: 'Cabbage',
              itemPrice: 10,
              image: 'https://wallpapercave.com/wp/wp4159429.jpg'),
          ProductModel(
              title: 'Carrot',
              itemPrice: 10,
              image:
                  'https://toppng.com/uploads/preview/carrot-image-png-carrots-transparent-background-11563068492edveck6exe.png'),
          ProductModel(
              title: 'Capsicum',
              itemPrice: 10,
              image:
                  'https://www.nicepng.com/png/detail/52-525615_green-bell-pepper-png-green-capsicum-png.png'),
        ]),
    Category(
        title: 'fruits',
        id: 2,
        image:
            'assets/images/fruits.jpg',
        productModels: [
          ProductModel(
              title: 'Kiwi',
              itemPrice: 10,
              image:
                  'https://images.unsplash.com/photo-1591796079433-7f41b45eb95c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=693&q=80'),
          ProductModel(
              title: 'Orange',
              itemPrice: 10,
              image: 'https://lh3.googleusercontent.com/proxy/7nSshK0i24K8jRp9GWJEa8ExKUscgG1ntwpEfgjgAwRd6giy7KGxmYCivrAVYxya3N_6gqAxYcSqM6BR7ibpz80hJSjVZbeQjSAq5cCcvw-2EntFkUB5yQ'),
          ProductModel(
              title: 'Mango',
              itemPrice: 10,
              image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq8swC-Pt0O5RSSumEwF4otoWpIgefuOFyGw&usqp=CAU'),
          ProductModel(
              title: 'Pineapple',
              itemPrice: 10,
              image: 'https://lh3.googleusercontent.com/proxy/_FVuJNJ3dvjBitBTf0_ctpfgvaBQwTSJl2XlBATuaZcOTjAcpNTLR5zFQZIJ6IzOqb37URNtIIV2L-Oj29ROa8vrTbEhVUgo0xKp2s26qdDMHV-I1tzGX1IQY5YXwSCd52Vj9kBIJjs'),
          ProductModel(
              title: 'Watermelon',
              itemPrice: 10,
              image: 'https://www.searchpng.com/wp-content/uploads/2019/01/Watermelon-png-images-1.png')
        ]),
    Category(
        title: 'breads',
        id: 3,
        image:
            'assets/images/breads.jpg',
        productModels: [
          ProductModel(
              title: 'Kiwi',
              image: 'https://wallpaperaccess.com/full/1463500.jpg')
        ]),
    Category(
        title: 'Icecream',
        id: 4,
        image: 'assets/images/icecream.jpg'),
    Category(
        title: 'bakery',
        id: 5,
        image:
            'assets/images/bakery.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'milk & eggs',
        id: 6,
        image:
            'assets/images/milkeggs.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'meat',
        id: 7,
        image:
            'assets/images/meat.jpg'),
    Category(
        title: 'sea food',
        id: 8,
        image: 'assets/images/seafood.jpg'),
    Category(
        title: 'cake',
        id: 9,
        image:
            'assets/images/cake.jpg'),
    Category(
        title: 'Soft Drink',
        id: 10,
        image:
            'assets/images/coke.jpg'),
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
