import 'package:bel_gomlaa/sign-pages/vsignin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class VendorSignUp extends StatefulWidget {
  static final _formKey = GlobalKey<FormState>();

  @override
  _VendorSignUpState createState() => _VendorSignUpState();
}

class _VendorSignUpState extends State<VendorSignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference _database = FirebaseDatabase.instance.ref();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _storeNumberController = TextEditingController();
  final TextEditingController _storeLocationController = TextEditingController();

  void registerVendor() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      String? userId = userCredential.user?.uid;

      await FirebaseFirestore.instance.collection('vendor').doc(userId).set({
        'username': _usernameController.text,
        'email': _emailController.text,
        'mobileNumber': _mobileNumberController.text,
        'storelocation': _storeLocationController.text,
        'storenumber':_storeNumberController.text,
      });

      // Navigate to the sign-in screen or perform any other action
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VsignIn()),
      );
    } catch (e) {
      print('Error: $e');
      // Handle registration errors here.
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF58006D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Let\'s Get Started! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 750,
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Form(
                  key: VendorSignUp._formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a username';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _mobileNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Mobile Number',
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a mobile number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _storeNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Store Number',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a store number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        controller: _storeLocationController,
                        decoration: const InputDecoration(
                          labelText: 'Store Location',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a store location';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          if (VendorSignUp._formKey.currentState!.validate()) {
                            registerVendor();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF58006D),
                        ),
                        child: const Text('Registration'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
