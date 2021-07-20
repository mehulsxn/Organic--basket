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
              title: 'Onion', itemPrice: 10, image: 'assets/images/onion.jpg',description:'An onion is a round vegetable with a brown skin that grows underground. It has many white layers on its inside which have a strong, sharp smell and taste.It is made with fresh minced meat, cooked with onion and a rich tomato sauce.' ),
          ProductModel(
              title: 'Potato',
              itemPrice: 10,
              image: 'assets/images/potato.jpeg',description: 'The potato is one of some 150 tuber-bearing species of the genus Solanum (a tuber is the swollen end of an underground stem). The compound leaves are spirally arranged; each leaf is 20–30 cm (about 8–12 inches) long and consists of a terminal leaflet and two to four pairs of leaflets.'),
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
              title: 'Kiwi', itemPrice: 10, image: 'assets/images/kiwi.png',description: 'The ellipsoidal kiwi fruit is a true berry and has furry brownish green skin. The firm translucent green flesh has numerous edible purple-black seeds embedded around a white centre. The deciduous leaves are borne alternately on long petioles (leaf stems), and young leaves are covered with reddish hairs.'),
          ProductModel(
              title: 'Orange',
              itemPrice: 10,
              image: 'assets/images/orange.png'),
          ProductModel(
              title: 'Mango', itemPrice: 10, image: 'assets/images/mango.png'),
          ProductModel(
              title: 'Pineapple',
              itemPrice: 10,
              image: 'assets/images/pineapple.png',description: ' a juicy, edible tropical fruit somewhat resembling a pine cone: it consists of the fleshy inflorescence of a collective fruit developed from a spike of flowers. 2. the terrestrial plant (Ananas comosus) of the pineapple family on which it grows, having a short stem and spiny-edged, recurved leaves.'),
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
          ProductModel(title: 'Cookies',itemPrice: 10,image: 'assets/images/cookie.jpg'),
          ProductModel(title: 'Pastries',itemPrice: 10,image: 'assets/images/pastry.png'),
          ProductModel(title: 'Chocolates',itemPrice: 10,image: 'assets/images/choc.png'),
          ProductModel(title: 'Muffins',itemPrice: 10,image: 'assets/images/muffin.png')
        ]),
    Category(
        title: 'Milk & Eggs',
        id: 6,
        image: 'assets/images/milkeggs.jpg',
        productModels: [
          ProductModel(title: 'Toned Milk',itemPrice: 10, image:'assets/images/toned.png' ),
          ProductModel(title: 'Butter Milk',itemPrice: 10, image:'assets/images/buttermilk.png' ),
          ProductModel(title: 'Eggs',itemPrice: 10, image: 'assets/images/eggs1.png'),
        ]),
    Category(
        title: 'Meat',
        id: 7,
        image: 'assets/images/meat.jpg',
        productModels: [
          ProductModel(title: 'Red Meat',itemPrice: 10,image:'assets/images/redmeat.jpg' ),
          ProductModel(title: 'Chicken',itemPrice: 10,image:'assets/images/chicken.png' ),
          ProductModel(title: 'Boneless Chicken',itemPrice: 10,image: 'assets/images/boneless.png' ),
        ]),
    Category(
        title: 'Sea food',
        id: 8,
        image: 'assets/images/seafood.jpg',
        productModels: [
          ProductModel(title: 'fish',itemPrice: 10,image: 'assets/images/fish.png'),
          ProductModel(title: 'lobster',itemPrice: 10,image: 'assets/images/lobster.png'),
          ProductModel(title: 'crabs',itemPrice: 10,image: 'assets/images/crab.jpg'),
        ]),
    Category(
        title: 'Cake',
        id: 9,
        image: 'assets/images/cake.jpg',
        productModels: [
          ProductModel(title: 'Chocolate Cake',itemPrice: 10,image: 'assets/images/choccake.png'),
          ProductModel(title: 'Fruit Cake',itemPrice: 10,image:'assets/images/fruitcake.png' ),
          ProductModel(title:'Pineapple Cake',itemPrice: 10,image: 'assets/images/pine.png'),
        ]),
    Category(
        title: 'Soft Drink',
        id: 10,
        image: 'assets/images/coke.jpg',
        productModels: [
          ProductModel(title: 'Coca Cola' ,itemPrice: 10,image: 'assets/images/coca.png'),
          ProductModel(title: 'Milk Shake',itemPrice: 10,image: 'assets/images/milkshake.png'),
          ProductModel(title: 'Coffee',itemPrice: 10,image: 'assets/images/coffee.png'),
        ]),

  ];
  static final offers = [
    Offers(
      image: 'assets/images/offer4.jpg',
    ),
    Offers(
      image: 'assets/images/offer2.jpg',
    ),
    Offers(
      image: 'assets/images/offer33.jpg',
    ),
  ];
  static final popularDeals = [
    Popular(
      image: 'assets/images/pop1.png',
    ),
    Popular(
      image: 'assets/images/popular3.jpg',
    ),
    Popular(
      image:'assets/images/pop2.png' ,
    ),
    Popular(
      image: 'assets/images/fruitcake.jpg',
    ),
  ];
}
