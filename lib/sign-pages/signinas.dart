import 'package:bel_gomlaa/sign-pages/vsignin.dart';
import 'package:flutter/material.dart';


import 'csign-in.dart';

class SigninasPage extends StatelessWidget {

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
            'Sign in As',
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
                    MaterialPageRoute(builder: (context) => VsignIn()),
                  );
                  print("vsignin");
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
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                  print("csignin ");
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