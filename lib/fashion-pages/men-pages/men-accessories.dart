import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-products.dart';
import 'package:bel_gomlaa/home-page/homepage.dart' as Home;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home-page/homepage.dart';
import '/profile.dart';
import '/sign-pages/vendor-sign-up.dart';
//import '../../wishlist-page.dart';



class MenAccessoriesPage extends StatefulWidget {
  _MenAccessoriesPageState createState() => _MenAccessoriesPageState();
}


class _MenAccessoriesPageState extends State<MenAccessoriesPage> {
  int currentIndex = 0;


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Clothing',
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

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(

                      itemCount: menaccessories.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) =>
                          buildCard(menaccessories[index]),

                    ),
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
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                  break;
                                case 1:
                                // Navigate to the profile page
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                                  break;
                              /*
                                        case 2:
                                        // Navigate to the wishlist page
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistPage()));
                                          break;

                                           */
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

        )
    );
  }

  Widget buildCard(Menaccessories,) =>
      Container(
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
                      Menaccessories.image,
                      fit: BoxFit.cover,

                    ),
                  ),
                )
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  Menaccessories.name,
                  style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(Icons.favorite, color: Colors.transparent,),
              ],
            ),

            Center(
              child: Row(

                children: [
                  Text(
                    Menaccessories.price,
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
