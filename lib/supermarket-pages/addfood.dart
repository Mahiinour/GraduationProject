import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'image.dart';

class AddFoodPage extends StatefulWidget {
  const AddFoodPage({Key? key}) : super(key: key);


  @override
  State<AddFoodPage> createState() => _AddFoodPageState();
}


class _AddFoodPageState extends State<AddFoodPage> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productDescriptionController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productQuantityController = TextEditingController();

  CollectionReference products = FirebaseFirestore.instance
      .collection('sproduct');


  File? image;

  final _storageRef = FirebaseStorage.instance.ref();

  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text('Add Product')),
     body: SingleChildScrollView(
       padding: EdgeInsets.all(20),
       child: Column(children: [

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

           controller: _productPriceController,
           decoration: const InputDecoration(
             labelText: 'Price',
           ),
           keyboardType: TextInputType.text,
         ),
         TextFormField(

           controller: _productQuantityController,
           decoration: const InputDecoration(
             labelText: 'Quantity',
           ),
           keyboardType: TextInputType.number,
         ),
         FimageWidget(onchange: (value) {
           image = value;
         },
         ),

         ElevatedButton(
           onPressed: () async{
            final uploadedimage=  await _storageRef

                 .child(
                 'sproducts/${image?.path}')
                 .putFile(
                 image!,
                 SettableMetadata(
                   contentType: "image/jpeg",
                 ));
            final uploadPath = await uploadedimage.ref.getDownloadURL();
            await products.doc().set({
               'description':_productDescriptionController.text,
               'productname':_productNameController.text,
               'price':_productPriceController.text,
               'image':uploadPath,

             });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Product Added Success'),
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
