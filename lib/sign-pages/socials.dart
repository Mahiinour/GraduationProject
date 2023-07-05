import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
const Socials({Key? key,

  required this.icon,

}) : super(key: key);

    final String icon;


  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
