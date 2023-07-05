
import '../../cart-pages/cart-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/boys-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/girls-page.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-shoes.dart';
import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/profile.dart';
import '../../wishlist-page.dart';
import '../../products-description.dart';
import '/fashion-pages/kids-pages/kids-products.dart';






class KidsPage extends StatefulWidget {
  _KidsPageState createState() => _KidsPageState();
}


class _KidsPageState extends State<KidsPage> {
  int currentIndex = 0;



  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Kids',
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
                          Text("Girls",
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
                                      builder: (context) => GirlsPage()));
                              print("girls");
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
                      itemCount: 5,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:girlsproducts[index])));
                          },
                          child: buildCard(girlsproducts[index])),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Boys",
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
                                      builder: (context) => BoysPage()));
                              print("boys");
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
                      itemCount: 5,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:boysproducts[index])));
                          },
                          child: buildCard(boysproducts[index])),
                    ),
                  ),





                        ]
                        )

                  )

  );




  }
  Widget buildCard(
      Kidsproducts ,
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
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/graduation-project-7a509.appspot.com/o/kidsdress.jpg?alt=media&token=393354a9-42bf-49ec-ac5c-dcd1047278b6&_gl=1*1cns66a*_ga*NTgyODczMzEuMTY4MTM5MTM0Ng..*_ga_CW55HF8NVT*MTY4NjQyMzAyMi41OS4xLjE2ODY0MjM1NDkuMC4wLjA.',
                  fit: BoxFit.cover,
                ),
              ),
            )
        ),
        SizedBox(height: 5),
        Text(
          Kidsproducts.name,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                Kidsproducts.price,
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

