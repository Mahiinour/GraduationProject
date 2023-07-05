import 'package:bel_gomlaa/sign-pages/vendor-sign-up.dart';
import 'package:bel_gomlaa/welcomepage.dart';
import 'package:bel_gomlaa/home-page/homepage.dart' as Home;
import 'package:bel_gomlaa/cart-pages/cart-page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:bel_gomlaa/wishlist-page.dart';
import 'package:flutter/material.dart';

import 'home-page/homepage.dart';



class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);

  _ProfilePageState createState() =>  _ProfilePageState();
}
class  _ProfilePageState  extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
   late User _user;
   late Map<String, dynamic> ? _userData = {};

  int currentIndex =0;
  @override
  void initState(){
    super.initState();
    _getUserData();
  }
  Future<void> _getUserData() async {
    setState(() {
    }
    );
    try {
      _user = _auth.currentUser!;

      DocumentSnapshot snapshot = await _firestore
          .collection('users')
          .doc(_user.uid)
          .get();

      if (snapshot.exists) {
        setState(() {
          _userData = snapshot.data() as Map<String, dynamic>;
        });
      }
    } catch (e) {
      print('Error fetching user data: $e');
    } finally {
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()));
          print("logout done");

        },
        child: Icon(Icons.logout_rounded),
        backgroundColor: Color(0xff58006D),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            ListTile(
              title: Center(
                child: Text(
                  _userData != null ? _userData!['username'] ?? 'There is no data' : 'loading...',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            subtitle: Center(
              child: Text(
                _userData != null ? _userData!['email'] ?? 'N/A' : 'loading',
                style: TextStyle(fontSize: 15),
              ),
             ),
            ),

            Divider(
              height: 20,
              color: Colors.purple,
              thickness: 2,
              indent : 10,
              endIndent : 10,
            ),


            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.phone),
                title:   ListTile(
                  title:  Text("${ _userData != null ? _userData!['mobileNumber'] ?? 'There is no data' : 'loading...'}",
                    style: TextStyle(fontSize:18),
                  ),

                ),
              ),
            ),

            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(
                  'Orders',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            TextButton(
              onPressed: () {  },
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20,),

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
                        /*  case 2:
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
          ],
        ),
      ),
    );
  }
}
