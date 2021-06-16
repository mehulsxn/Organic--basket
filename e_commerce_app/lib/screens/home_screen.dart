import 'package:e_commerce_app/data/data.dart';

import 'package:e_commerce_app/widgets/constant.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Hey\nLet\'s search your organic food'),
        ),
        actions: [
          // Container(
          //   child: Image.network('https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-person-512.png'),
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSearchBox(),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
              ),
              child: Column(
                children: [
                  buildCategoriesContainer(mq),
                  SizedBox(
                    height: 15,
                  ),
                  buildOffer(mq),
                  buildPopulardeal(mq),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchBox() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 35,
              ),
              border: UnderlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Widget buildCategoriesContainer(Size mq) {
    return Container(
      padding: EdgeInsets.all(16),
      height: mq.height * 0.29,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 20, color: KPrimaryColor),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: mq.height * 0.17,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Data.categories.length,
              itemBuilder: (ctx, index) => Data.categories[index],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOffer(Size mq) {
    return Container(
      height: mq.height * 0.17,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Data.offers.length,
        itemBuilder: (ctx, index) => Data.offers[index],
      ),
    );
  }

  Widget buildPopulardeal(Size mq) {
    return Container(
      padding: EdgeInsets.all(16),
      height: mq.height * 0.29,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Deals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 20, color: KPrimaryColor),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.only(top: 6),
            height: mq.height * 0.17,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Data.popularDeals.length,
              itemBuilder: (ctx, index) => Data.popularDeals[index],
            ),
          ),
        ],
      ),
    );
  }
}
