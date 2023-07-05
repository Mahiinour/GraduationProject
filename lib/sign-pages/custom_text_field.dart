import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  CustomTextField({this.hintText});


  String? hintText;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(


        hintText: hintText,

        hintStyle: TextStyle(
          color: Color(0xff58006D)
        ),

        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff58006D) ,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff58006D),
          ),
        ),
      ),

    );

  }
}
