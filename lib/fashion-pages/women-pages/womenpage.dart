import 'women-accessories.dart';
import 'women-bags.dart';
import 'women-clothing.dart';
import 'women-shoes.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/cart-pages/cart-page.dart';
import '/profile.dart';
import '/wishlist-page.dart';
import '/products-description.dart';

import 'women-accessories.dart';
import 'women-bags.dart';
import 'women-shoes.dart';
import 'package:bel_gomlaa/products.dart';
import 'women-clothing.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WomenPage extends StatefulWidget {
  _WomenPageState createState() => _WomenPageState();
}


class _WomenPageState extends State<WomenPage> {
  int currentIndex = 0;



  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Women',
            style: TextStyle(color: Color(0xff58006D)),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Color(0xff58006D),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()));
                print("cart page");

              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              color: Color(0xff58006D),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff58006D)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Do something when search icon button is pressed.
                          },
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Color(0xff58006D)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.mic),
                          onPressed: () {
                            // Do something when voice icon button is pressed.
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Clothing",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black)

                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WomenClothing()));
                              print("clothing");
                            },
                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(
                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:clothes[index])));
                          },
                          child: buildCard(clothes[index])),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Shoes",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black
                              )

                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WomenShoesPage()));
                              print("shoes");
                            },
                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(
                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:shoes[index])));
                          },
                          child: buildCard(shoes[index])),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text('Bags & Wallets',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black
                              )

                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WomenBagsPage()));
                              print("bags");
                            },

                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(

                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:bags[index])));
                          },
                          child: buildCard(bags[index])),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Accessories",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black)

                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WomenAccessoriesPage()));
                              print("accessories");
                            },

                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(
                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:accessories[index])));
                          },
                          child: buildCard(accessories[index])),
                    ),
                  ),



                ]


            )
        )
    );

  }
  Widget buildCard(
      Product ,
      ) => Container(
    width: 190,

    child: Column(
      children: [
        Expanded(
            child:
            AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Product.image,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ),
        SizedBox(height: 5),
        Text(
          Product.name,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Product.price,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.shopping_cart),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}