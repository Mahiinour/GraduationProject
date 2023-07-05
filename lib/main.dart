
import 'package:bel_gomlaa/cart-pages/add-new-address.dart';
import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/cart-pages/checkout-page.dart';
import 'package:bel_gomlaa/cart-pages/delivery-page.dart';
import 'package:bel_gomlaa/cart-pages/payment-page.dart';

import 'package:bel_gomlaa/electronics-pages/computers.dart';
import 'package:bel_gomlaa/electronics-pages/electronics-page.dart';
import 'package:bel_gomlaa/electronics-pages/mobile-page.dart';
import 'package:bel_gomlaa/electronics-pages/tv-page.dart';

import 'package:bel_gomlaa/fashion-pages/kids-pages/boys-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/girls-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/kidspage.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-clothing.dart';

import 'package:bel_gomlaa/fashion-pages/men-pages/menpage.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-bags.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-shoes.dart';

import 'package:bel_gomlaa/products.dart';
import 'package:bel_gomlaa/profile.dart';
import 'package:bel_gomlaa/settings.dart';
import 'package:bel_gomlaa/sign-pages/csign-in.dart' as SignInPage;
import 'package:bel_gomlaa/fashion-pages/fashion-page.dart';
import 'package:bel_gomlaa/wishlist-page.dart';
import 'home-page/homepage.dart';
import 'splash.dart';
import 'package:bel_gomlaa/supermarket-pages/beverages.dart';
import 'package:bel_gomlaa/supermarket-pages/flour&sugar.dart';
import 'package:bel_gomlaa/supermarket-pages/jarred-food.dart';
import 'package:bel_gomlaa/supermarket-pages/laundry.dart';
import 'package:bel_gomlaa/supermarket-pages/oil.dart';
import 'package:bel_gomlaa/supermarket-pages/pasta&rice.dart';
import 'package:bel_gomlaa/supermarket-pages/supermarket.dart';
import 'package:bel_gomlaa/sign-pages/vendor-sign-up.dart';
import 'package:bel_gomlaa/welcomepage.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/women-clothing.dart';
import 'package:bel_gomlaa/fashion-pages/women-pages/womenpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:bel_gomlaa/bottom-navbar.dart';
import 'package:bel_gomlaa/cart-pages/add-new-visa.dart';
import 'package:bel_gomlaa/sign-pages/customer-sign-up.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BelGomla());
}


class BelGomla extends StatelessWidget {
  const BelGomla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      routes: {
        'SignIn': (context) => SignInPage.SignIn(),
        'HomePage': (context) => HomePage(),
        'ProfilePage': (context) => const ProfilePage(),
        'WishList': (context) => WishListPage()


      },

    );
  }
}