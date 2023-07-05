
import 'package:bel_gomlaa/sign-pages/vendor-sign-up.dart';
import 'package:bel_gomlaa/sign-pages/vsignin.dart';
import 'package:bel_gomlaa/welcomepage.dart';

import 'package:flutter/material.dart';
import 'package:bel_gomlaa/main.dart';

class VwelcomePage extends StatelessWidget {
  const VwelcomePage({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff58006D),
      body: Column(
        children: [
          SizedBox(height: 95),
          Container(
            child: Image.asset('assets/images/logo111.png'),
            width: 400,
            height: 250,
          ),
          Text(
            'Join Us As',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              height: 7,
              color: Color(0xffffffff),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: 100),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                  print("v");
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                  width: 124,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Vendor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.1725,
                        color: Color(0xf970018c),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                  print("c ");
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  width: 124,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Customer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.1725,
                        color: Color(0xf970018c),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}