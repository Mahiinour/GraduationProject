import 'dart:html';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({Key? key}) : super(key: key);

  @override
  State<ShowProductScreen> createState() => _ShowProductScreenState();
}

class _ShowProductScreenState extends State<ShowProductScreen> {

  late File file;
  var imagepicker = ImagePicker();

  uploadImage() async{

    var imgpicked = await imagepicker.getImage(source:ImageSource.gallery);

  }


  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}
