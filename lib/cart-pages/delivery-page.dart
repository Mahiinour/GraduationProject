import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  int _selectedTextIndex = 0;

  String? option1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text('Delivery',
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

                        color: Color(0xffDBB6E4),
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

                        color: Colors.white,
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
                      child: Text('Select a delivery method',
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

                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: RadioListTile(
                      title:Text('Door Delivery',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                          color: Colors.black,
                        ),) ,
                      subtitle:Text('Delivery fees: EGP 25',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,

                          color: Color(0xff8B8989),
                        ),) ,

                      value: "option2",
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
                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                  ),

                  child:   Padding(
                    padding: const EdgeInsets.all(20),
                    child: RadioListTile(
                      title:Text('Click & Collect',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                          color: Colors.black,
                        ),) ,
                      subtitle:Text('collect your item from the store within 3-4 days',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,

                          color: Color(0xff8B8989),
                        ),) ,

                      value: "Click & Collect",
                      groupValue: option1,
                      onChanged: (value){
                        setState(() {
                          option1 = value.toString();
                        });
                      },
                    ),
                  ),
                ),

                Divider(
                  height: 70, color: Colors.purple, thickness: 2, indent : 10, endIndent : 10,
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

                SizedBox(height: 50),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff58006D),
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentPage()));

                      print('payment');
                    },
                     child: Text('Proceed to payment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18),),
                  ),
                ),
              ]
          ),
        )

    );
  }
}