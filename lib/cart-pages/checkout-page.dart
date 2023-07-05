import '../bottom-navbar.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff58006D),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color(0xff58006D),
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: screenWidth * 0.1),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/confirm.png'),
                    height: screenWidth * 0.4,
                    width: screenWidth * 0.35,
                  ),
                ),
                Text(
                  'Order Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.06,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenWidth * 0.2),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Text(
                    'Your order is approved and will\nbe available within few days',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenWidth * 0.1),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Text(
                    'Thank you for using BelGomla!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenWidth * 0.4),
                SizedBox(
                  height: screenWidth * 0.12,
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.purple,
                          width: 2.0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Track Order',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenWidth * 0.04),
                SizedBox(
                  height: screenWidth * 0.12,
                  width: screenWidth * 0.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoriesPage()),
                      );

                      print('payment');
                    },
                    child: Text(
                      'Continue shopping',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                  ),
                ),
              ],
              ),
        ),
      );
    }
}