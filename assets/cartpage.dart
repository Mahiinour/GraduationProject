import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String image;
  final double price;
  late final int quantity;

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
  List<CartItem> cartItems = [
    CartItem(
      name: 'Item 1',
      image: 'assets/images/item1.png',
      price: 19.99,
      quantity: 2,
    ),
    CartItem(
      name: 'Item 2',
      image: 'assets/images/item2.png',
      price: 29.99,
      quantity: 1,
    ),
    CartItem(
      name: 'Item 3',
      image: 'assets/images/item3.png',
      price: 9.99,
      quantity: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(
              item.image,
              width: 60,
              height: 60,
            ),
            title: Text(item.name),
            subtitle: Text('Price: \$${item.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
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
                Text(item.quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      item.quantity++;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
