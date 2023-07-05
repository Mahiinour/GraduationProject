import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/products-description.dart';
import '/products.dart';
import '/profile.dart';
import '/wishlist-page.dart';


class LaundryPage extends StatefulWidget {
  const LaundryPage({Key? key}) : super(key: key);

  _LaundryPageState createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> {
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Supermarket',
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
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(

                  itemCount: laundry.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(item:laundry[index])));
                      },
                      child: buildCard(laundry[index])),

                ),
              ),

            ],
          ),
        )

    );
  }
  Widget buildCard(
      Laundry ,
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
                child: GestureDetector(

                  child: Image.asset(
                    Laundry.image,
                    fit: BoxFit.cover,

                  ),
                ),
              ),
            )
        ),
        SizedBox(height: 5),

        Text(
          Laundry.name,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Laundry.price,
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