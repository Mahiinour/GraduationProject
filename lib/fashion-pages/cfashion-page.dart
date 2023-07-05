import 'package:bel_gomlaa/fashion-pages/kids-pages/kidspage.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/menpage.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/womenpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../cart-pages/cart-page.dart';
import '../home-page/homepage.dart';
import '../products.dart';
import '../profile.dart';
import '/wishlist-page.dart';




class CFashionPage extends StatefulWidget {
  const CFashionPage({Key? key}) : super(key: key);

  @override
  _CFashionPageState createState() => _CFashionPageState();
}

class _CFashionPageState extends State<CFashionPage> {
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fashion',
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
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 70, left: 60)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WomenPage()));
                        print("women");
                      },
                      child: Text(
                        'Women',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 60)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MenPage()));
                        print("men");
                      },
                      child: Text(
                        'Men',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 70)),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KidsPage()));
                          print("kids");
                        },
                        child: Text(
                          'Kids',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' TRENDING IN ALL',
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
                    itemBuilder: (context, index) => buildCard(items[index]),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' RECOMMENDED',
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
                    itemBuilder: (context, index) => buildCard(items[index]),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' RECENTLY SEEN ',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 350,
                  child: ListView.separated(
                    padding: EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => buildCard(items[index]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Builder(
                    builder: (context) {
                      return Column(children: [
                        BottomNavigationBar(
                          currentIndex: currentIndex,
                          onTap: (index) {
                            setState(() => currentIndex = index);
                            switch (index) {
                              case 0:
                              // Navigate to the home page
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                break;
                              case 1:
                              // Navigate to the profile page
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                break;

                              case 2:
                              // Navigate to the wishlist page
                                Navigator.push(context, MaterialPageRoute(builder: (context) => WishListPage()));
                                break;


                            }
                          },
                          backgroundColor: Colors.white,
                          selectedItemColor: Colors.purple,
                          unselectedItemColor: Colors.grey,
                          showSelectedLabels: true,
                          showUnselectedLabels: true,
                          items: [
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.person),
                              label: 'Profile',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.favorite),
                              label: 'Wishlist',
                            ),

                          ],
                        ),

                      ]
                      );
                    }
                )
              ]
          )
      ),

    );


  }
  Widget buildCard(
      Product,
      ) =>
      Container(
        width: 190,
        child: Column(
          children: [
            Expanded(
                child: AspectRatio(
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

            SizedBox(height: 4),
            Text(
              Product.name,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Center(
              child: Row(

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
