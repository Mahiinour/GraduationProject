import 'dart:io';

import 'package:bel_gomlaa/wishimage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';



class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);


  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productDescriptionController = TextEditingController();
  final TextEditingController _productQuntityController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();

  CollectionReference products = FirebaseFirestore.instance
      .collection('cproducts');


  File? image;

  final _storageRef = FirebaseStorage.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Upload Wish')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          WishImage(onchange: (value) {
            image = value;
          },),
          TextFormField(

            controller: _productNameController,
            decoration: const InputDecoration(
              labelText: 'Product Name',
            ),
            keyboardType: TextInputType.text,
          ),
          TextFormField(

            controller: _productDescriptionController,
            decoration: const InputDecoration(
              labelText: 'Product Description',
            ),
            keyboardType: TextInputType.text,
          ),
          TextFormField(

            controller: _productQuntityController,
            decoration: const InputDecoration(
              labelText: 'Quantity',
            ),
            keyboardType: TextInputType.number,
          ),

          ElevatedButton(
            onPressed: () async{
              final uploadedimage=  await _storageRef

                  .child(
                  'products/${image?.path}')
                  .putFile(
                  image!,
                  SettableMetadata(
                    contentType: "image/jpeg",
                  ));
              final uploadPath = await uploadedimage.ref.getDownloadURL();
              await products.doc().set({
                'description':_productDescriptionController.text,
                'productname':_productNameController.text,
                'quantity':_productQuntityController.text,
                'image':uploadPath,

              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Wish List Updated Successfully'),
                  backgroundColor: Color(0xff58006D),

                ),
              );

              Navigator.of(context).pop();

            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff58006D)// Set the desired background c
            ),
            child: const Text('Add Product'),

          ),
        ],),
      ),
    );
  }
}
