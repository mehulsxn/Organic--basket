import 'package:e_commerce_app/widgets/popularitem.dart';
import 'package:flutter/material.dart';
import '../widgets/cateogry_item.dart';
import '../widgets/offer.dart';

class Data {
  static final categories = [
    CategoryItem(),
    CategoryItem(),
    CategoryItem(),
    CategoryItem(),
    CategoryItem(),
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
