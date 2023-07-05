import '../../cart-pages/cart-page.dart';
import '../kids-pages/men-accessories.dart';
import 'men-shoes.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/profile.dart';
import '/wishlist-page.dart';
import '/products-description.dart';
import 'men-clothing.dart';


  class MenPage extends StatefulWidget {
  _MenPageState createState() => _MenPageState();
  }


  class _MenPageState extends State<MenPage> {




  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  centerTitle: true,
  title: Text(
  'Men',
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
  builder: (context) => MenClothing()));
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:menclothes[index])));
        },
        child: buildCard(menclothes[index])),
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
  builder: (context) => MenShoesPage()));
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:menshoes[index])));
            },
            child: buildCard(menshoes[index])),
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

                    color: Colors.black
                )

            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenAccessoriesPage()));
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:menaccessories[index])));
        },
        child: buildCard(menaccessories[index])),
  ),
  ),




  ]
  )

  )

  );



  }
  Widget buildCard(
  MenProducts ,
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
    MenProducts.image,
  fit: BoxFit.cover,
  ),
  ),
  )
  ),
  SizedBox(height: 5),
  Text(
    MenProducts.name,
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
  ),
  Center(
  child: Row(
mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text(
    MenProducts.price,
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

