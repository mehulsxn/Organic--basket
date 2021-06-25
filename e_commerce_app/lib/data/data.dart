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
            'https://media.istockphoto.com/photos/fresh-fruits-and-vegetables-picture-id589415708?k=6&m=589415708&s=612x612&w=0&h=yk6a8hZI3HnGuPgCkJqWjqzmfbGqy9bucx1ZUXkXwA8=',
        productModels: [
          ProductModel(title: 'Mango',itemPrice: 10),
          ProductModel(title: 'papaya',itemPrice: 10),
          ProductModel(title: 'grapes',itemPrice: 10),
          ProductModel(title: 'apple',itemPrice: 10),
          ProductModel(title: 'orange',itemPrice: 10)
        ]),
    Category(
        title: 'fruits',
        id: 2,
        image:
            'https://www.hdwallpapersfreedownload.com/uploads/large/fruits/all-fruits-hd-wallpaper.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'breads',
        id: 3,
        image:
            'https://c4.wallpaperflare.com/wallpaper/681/930/507/bread-rye-bread-baked-goods-baguette-wallpaper-preview.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'eggs',
        id: 4,
        image: 'https://wallpaperaccess.com/full/1463500.jpg'),
    Category(
        title: 'bakery',
        id: 5,
        image:
            'https://hirasweets.com/wp-content/uploads/revslider/bakery/bakery-wallpaper-hd-1.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'milk',
        id: 6,
        image:
            'https://previews.123rf.com/images/vasilyrosca/vasilyrosca1803/vasilyrosca180300140/97280587-milk-packet-isolated-on-white-background-vector-illustration-of-carton-pack-paper-box-design-for-dri.jpg',
        productModels: [ProductModel(title: 'Kiwi')]),
    Category(
        title: 'meat',
        id: 7,
        image:
            'https://i.pinimg.com/originals/ac/55/42/ac554280e95778bff52905db341ba5a3.jpg'),
    Category(
        title: 'sea food',
        id: 8,
        image: 'https://cdn.hipwallpaper.com/i/87/5/b7XuBM.jpg'),
    Category(
        title: 'cake',
        id: 9,
        image:
            'https://images.unsplash.com/photo-1559553156-2e97137af16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
    Category(
        title: 'juice',
        id: 10,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz9Qa4ws4WUOsgjrz9i0pQBVHncrB7WvZp2A&usqp=CAU'),
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
