import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/bottom-navbar.dart';


class CustomButton extends StatelessWidget {
  CustomButton({required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final buttonWidth = screenSize.width * 0.4;

    return SizedBox(
      height: 50,
      width: buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff58006D),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoriesPage()),
          );
        },
      ),
    );
  }
}