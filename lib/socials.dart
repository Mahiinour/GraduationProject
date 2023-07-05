


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
const Socials({

  required this.icon,

}) : super();

    final String icon;


  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 54, vertical: 10),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child:Image .asset(icon,
        fit: BoxFit.cover

        )

      );

  }
}
