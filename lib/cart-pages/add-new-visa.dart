import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCardPage extends StatefulWidget {
  @override
  _NewCardPageState createState() => _NewCardPageState();
}

class _NewCardPageState extends State<NewCardPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Add new card',
            style: TextStyle(
              color: Color(0xff58006D),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Color(0xff58006D),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              color: Color(0xff58006D),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.1,
                screenWidth * 0.2,
                screenWidth * 0.1,
                screenWidth * 0.4,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/cards.png'),
                    height: screenWidth * 0.3,
                    width: screenWidth * 0.4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.04),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Holder Name',
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.08),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Expiry Date',
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'CVV',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.15),
                  SizedBox(
                    height: screenWidth * 0.12,
                    width: screenWidth * 0.4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff58006D),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentPage()),
                        );

                        print('Save');
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}