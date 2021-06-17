import 'package:e_commerce_app/models/models.dart';
import 'package:e_commerce_app/widgets/popularitem.dart';
import 'package:flutter/material.dart';
import '../widgets/cateogry_item.dart';
import '../widgets/offer.dart';

class Data {
  static final categories = [

    Category(title: 'vegetables', id: 1, image: ''),
    Category(title: 'fruits', id: 2, image: ''),
    Category(title: 'breads', id: 3, image: ''),
    Category(title: 'eggs', id: 4, image: ''),
    Category(title: 'bakery', id: 5, image: ''),
    Category(title: 'milk', id: 6, image: ''),
    Category(title: 'meat', id: 7, image: ''),
    Category(title: 'sea food', id: 8, image: ''),
    Category(title: 'cake', id: 9, image: ''),
    Category(title: 'juice', id: 10, image: ''),

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
