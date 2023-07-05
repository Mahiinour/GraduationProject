import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:bel_gomlaa/supermarket-pages/beverages.dart';
import 'package:bel_gomlaa/supermarket-pages/flour&sugar.dart';
import 'package:bel_gomlaa/supermarket-pages/jarred-food.dart';
import 'package:bel_gomlaa/supermarket-pages/laundry.dart';
import 'package:bel_gomlaa/supermarket-pages/oil.dart';
import 'package:bel_gomlaa/supermarket-pages/pasta&rice.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/products-description.dart';
import '/products.dart';
import '/profile.dart';
import '/wishlist-page.dart';
import 'addfood.dart';

class CsupermarketPage extends StatefulWidget {
  _CsupermarketPageState createState() => _CsupermarketPageState();
}

class _CsupermarketPageState extends State<CsupermarketPage> {
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
                MaterialPageRoute(builder: (context) => CartPage()),
              );
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
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Image.asset(
                'assets/images/supermarket4.jpg', // Replace with your own image URL
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: supermarket.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastaAndRicePage()));
                    } else if (index == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OilsPage()));
                    } else if (index == 2) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaundryPage()));
                    } else if (index == 3) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BeveragesPage()));
                    } else if (index == 4) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlourAndSugarPage()));
                    } else if (index == 5) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JarsPage()));
                    }
                    print(index);
                  },
                  child: buildCard(supermarket[index]),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ' Top Picks',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 350,
              child: ListView.separated(
                padding: EdgeInsets.all(16),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductPage(item: toppicks[index])));
                  },
                  child: product(toppicks[index]),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget buildCard(Supermarket) => Container(
    width: 190,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          Supermarket.name,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ],
    ),
  );

  Widget product(Toppicks) => Container(
    width: 190,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          Toppicks.name,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Toppicks.price,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
