import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'checkout-page.dart';


class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedTextIndex = 0;

  String? option1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Payment',
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
    ]
    ),
    body: SingleChildScrollView(
    child: Column(
    children: [
    SizedBox(height: 25,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    DecoratedBox(
    decoration: BoxDecoration(

    color: Colors.white,
    borderRadius: BorderRadius.circular(50),
    ),
    child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
    'Delivery',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    ),
    ),
    SizedBox(width: 100,),
    DecoratedBox(
    decoration: BoxDecoration(

    color: Color(0xffDBB6E4),
    borderRadius: BorderRadius.circular(50),
    ),
    child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
    'Payment',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    ),
    )
    ],
    ),
      SizedBox(height: 35,),
      Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text('Select a payment method',
              style: TextStyle(
                fontSize: 18,

                color: Colors.black,
              ),
            ),
          )
      ),
      SizedBox(height: 20,),

      Container(
        margin: EdgeInsets.only(top: 5),

        height: 90,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(30),
        ),

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: RadioListTile(
            title:Text('Cash on delivery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,

                color: Colors.black,
              ),) ,

            value: "Cash on delivery",
            groupValue: option1,
            onChanged: (value){
              setState(() {
                option1 = value.toString();
              });
            },
          ),
        ),
      ),
      SizedBox(height: 20,),

      Container(
        margin: EdgeInsets.only(top: 5),
        height: 90,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(30),
        ),

        child:
            Padding(
              padding: const EdgeInsets.all(20),
              child: RadioListTile(
                title:Text('Pay by card',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                    color: Colors.black,
                  ),) ,
                value: "Pay by card",
                groupValue: option1,
                onChanged: (value){
                  setState(() {
                    option1 = value.toString();
                  });
                },
              ),
            ),
      ),
            Align(

              alignment: Alignment.topRight,
              child: Image(
                 image: AssetImage('assets/images/cards.png'),
                height: 80,
                width: 180,
              ),
            ),
            Divider(
              height: 10, color: Colors.purple, thickness: 2, indent : 10, endIndent : 10,
            ),
            SizedBox(height: 5,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Delivery fees',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 150),
                  Text(
                    'EGP 25',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 200),
                  Text(
                    'EGP 425',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff58006D),
                  elevation: 5, //elevation of button
                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()));

                  print('checkout');
                },
                child: Text('Checkout',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}