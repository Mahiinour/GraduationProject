import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({Key? key}) : super(key: key);

  @override
  _ProductSearchScreenState createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<QueryDocumentSnapshot<Map<String, dynamic>>> _searchResults = [];

  Future<void> _performSearch() async {
    final String searchQuery = _searchController.text;
    final QuerySnapshot<Map<String, dynamic>> searchResults = await FirebaseFirestore.instance
        .collection('products')
        .where('productName', isEqualTo: searchQuery)
        .get();

    setState(() {
      _searchResults = searchResults.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _performSearch,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final product = _searchResults[index].data();
                return ListTile(
                  title: Text(product['productName']),
                  subtitle: Text(product['description']),
                  // Add more fields as needed
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
