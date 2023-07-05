import 'package:bel_gomlaa/cart-pages/delivery-page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String image;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [];

  @override
  void initState() {
    super.initState();
    loadCartItems();
  }

  Future<void> loadCartItems() async {
    try {
      String uid = 'uid'; // Replace with the actual user ID or unique identifier
      final cartRef = FirebaseFirestore.instance.collection('cart').doc(uid).collection('items');
      QuerySnapshot snapshot = await cartRef.get();

      List<CartItem> items = [];
        for (var doc in snapshot.docs) {
        CartItem cartItem = CartItem(
          name: doc['name'],
          image: doc['image'],
          price: doc['price'].toDouble(),
          quantity: doc['quantity'],
        );
        items.add(cartItem);
      }

      setState(() {
        cartItems = items;
      });
    } catch (e) {
      print('Error loading cart items: $e');
      // Handle error loading cart items
    }
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += item.price * item.quantity;
    }
    return totalPrice;
  }

  void addToCart(CartItem item) {
    setState(() {
      cartItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    if (cartItems.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart'),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(
                screenWidth * 0.05,
                screenHeight * 0.03,
                screenWidth * 0.05,
                0,
              ),
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Row(
                      children: [
                        Image.network(
                          item.image,
                          width: screenWidth * 0.3,
                          height: screenHeight * 0.15,
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                'EGP ${item.price.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (item.quantity > 1) {
                                    item.quantity--;
                                  } else {
                                    cartItems.removeAt(index);
                                  }
                                });
                              },
                            ),
                            Text(
                              item.quantity.toString(),
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  item.quantity++;
                                });
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              screenWidth * 0.2,
              0,
              screenWidth * 0.2,
              screenHeight * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
                SizedBox(width: screenWidth * 0.15),
                Text(
                  'EGP ${calculateTotalPrice().toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: SizedBox(
              width: screenWidth * 0.5,
              height: screenHeight * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff58006D),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeliveryPage()),
                  );
                  print('Checkout');
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
