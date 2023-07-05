import 'package:bel_gomlaa/fashion-pages/fashion-page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bel_gomlaa/supermarket-pages/supermarket.dart';

class Product {
  final String? name;
  final String? image;
  final String? price;
  final String? description;

  Product({
    this.name,
    this.image,
    this.price,
    this.description,
  });
}

List<Product> items = [
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/kidsdress.jpg',
      name: ' Pink Dress ',
      price: 'EGP 150',
      description: 'girl kids short dress in color pink'),
  Product(
      image: 'assets/images/boyshirt.jpg',
      name: ' T-shirt',
      price: 'EGP 150',
      description: 'boy navy dinasour t-shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo Shirt',
      price: 'EGP 250',
      description: ' men maroon polo shirt short sleeves'),
  Product(
    image: 'assets/images/menshoes.jpg',
    name: 'Polo shirt',
    price: 'EGP 250',
  ),
];
List<Product> clothes = [
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
  Product(
      image: 'assets/images/dress1.png',
      name: 'Printed Dress',
      price: 'EGP 250',
      description:
          ' spring dress of black color and white flowers \n long sleevs maxi length'),
  Product(
      image: 'assets/images/cardigan1.jpg',
      name: 'Cardigan',
      price: 'EGP 200',
      description: ' wool winter cardigan brown color'),
];

List<Product> shoes = [
  Product(
      name: 'Shoes',
      image: 'assets/images/shoes1.jpg',
      price: 'EGP 200',
      description: 'women heels black color'),
  Product(
      name: 'Shoes',
      image: 'assets/images/shoes1.jpg',
      price: 'EGP 200',
      description: 'women heels black color'),
  Product(
      name: 'Shoes',
      image: 'assets/images/shoes1.jpg',
      price: 'EGP 200',
      description: 'women heels black color'),
  Product(
      name: 'Shoes',
      image: 'assets/images/shoes1.jpg',
      price: 'EGP 200',
      description: 'women heels black color'),
  Product(
      name: 'Shoes',
      image: 'assets/images/shoes1.jpg',
      price: 'EGP 200',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
  Product(
      image: 'assets/images/shoes2.jpg',
      name: 'Nude Heels',
      price: 'EGP 250',
      description: 'women heels nude color'),
];

List<Product> accessories = [
  Product(
      name: 'Rings',
      image: 'assets/images/rings.jpg',
      price: 'EGP 60',
      description: 'set of gold rings with different shapes'),
  Product(
      name: 'Rings',
      image: 'assets/images/rings.jpg',
      price: 'EGP 60',
      description: 'set of gold rings with different shapes'),
  Product(
      name: 'Rings',
      image: 'assets/images/rings.jpg',
      price: 'EGP 60',
      description: 'set of gold rings with different shapes'),
  Product(
      name: 'Rings',
      image: 'assets/images/rings.jpg',
      price: 'EGP 60',
      description: 'set of gold rings with different shapes'),
  Product(
      name: 'Rings',
      image: 'assets/images/rings.jpg',
      price: 'EGP 60',
      description: 'set of gold rings with different shapes'),
  Product(
      name: 'Sunglasses',
      image: 'assets/images/sunglasses.jpg',
      price: 'EGP 100',
      description: 'pink women sunglasses'),
  Product(
      name: 'Sunglasses',
      image: 'assets/images/sunglasses.jpg',
      price: 'EGP 100',
      description: 'pink women sunglasses'),
  Product(
      name: 'Sunglasses',
      image: 'assets/images/sunglasses.jpg',
      price: 'EGP 100',
      description: 'pink women sunglasses'),
  Product(
      name: 'Sunglasses',
      image: 'assets/images/sunglasses.jpg',
      price: 'EGP 100',
      description: 'pink women sunglasses'),
  Product(
      name: 'Sunglasses',
      image: 'assets/images/sunglasses.jpg',
      price: 'EGP 100',
      description: 'pink women sunglasses'),
];

List<Product> bags = [
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
  Product(
      name: 'Bag',
      image: 'assets/images/womenbag.jpg',
      price: 'EGP 60',
      description: 'women pink leather handbag'),
];
List<Product> menclothes = [
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
  Product(
      image: 'assets/images/polo.png',
      name: 'Polo shirt',
      price: 'EGP 250',
      description: 'men maroon polo shirt'),
];
List<Product> menshoes = [
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
  Product(
      image: 'assets/images/menshoes.jpg',
      name: 'Shoes',
      price: 'EGP 250',
      description: 'men black shoes'),
];
List<Product> menaccessories = [
  Product(
    image: 'assets/images/menwatch1.jpg',
    name: 'Watch',
    price: 'EGP 250',
    description: 'Men watch silver',
  ),
  Product(
    image: 'assets/images/menbelt1.jpg',
    name: 'Belt',
    price: 'EGP 250',
    description: 'Men black belt',
  ),
  Product(
    image: 'assets/images/menwallet1.jpg',
    name: 'Wallet',
    price: 'EGP 250',
    description: 'Men leather wallet',
  ),
  Product(
    image: 'assets/images/menglasses1.jpg',
    name: 'Sunglasses',
    price: 'EGP 250',
    description: 'Men sunglasses',
  ),
  Product(
    image: 'assets/images/menwatch1.jpg',
    name: 'Watch',
    price: 'EGP 250',
    description: 'Men watch silver',
  ),
  Product(
    image: 'assets/images/menbelt1.jpg',
    name: 'Belt',
    price: 'EGP 250',
    description: 'Men black belt',
  ),
  Product(
    image: 'assets/images/menwallet1.jpg',
    name: 'Wallet',
    price: 'EGP 250',
    description: 'Men leather wallet',
  ),
  Product(
    image: 'assets/images/menglasses1.jpg',
    name: 'Sunglasses',
    price: 'EGP 250',
    description: 'Men sunglasses',
  ),
  Product(
    image: 'assets/images/menwatch1.jpg',
    name: 'Watch',
    price: 'EGP 250',
    description: 'Men watch silver',
  ),
  Product(
    image: 'assets/images/menbelt1.jpg',
    name: 'Belt',
    price: 'EGP 250',
    description: 'Men black belt',
  ),
];
List<Product> girlsproducts = [
  Product(
      image: 'assets/images/girlsjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'girls jacket'),
  Product(
      image: 'assets/images/girldress1.jpg',
      name: 'Dress',
      price: 'EGP 250',
      description: 'girls dress'),
  Product(
      image: 'assets/images/girlsjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'girls jacket'),
  Product(
      image: 'assets/images/girldress1.jpg',
      name: 'Dress',
      price: 'EGP 250',
      description: 'girls dress'),
  Product(
      image: 'assets/images/girlsjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'girls jacket'),
  Product(
      image: 'assets/images/girldress1.jpg',
      name: 'Dress',
      price: 'EGP 250',
      description: 'girls dress'),
  Product(
      image: 'assets/images/girlsjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'girls jacket'),
  Product(
      image: 'assets/images/girldress1.jpg',
      name: 'Dress',
      price: 'EGP 250',
      description: 'girls dress'),
  Product(
      image: 'assets/images/girlsjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'girls jacket'),
  Product(
      image: 'assets/images/girldress1.jpg',
      name: 'Dress',
      price: 'EGP 250',
      description: 'girls dress')
];
List<Product> boysproducts = [
  Product(
      image: 'assets/images/boyshirt2.jpg',
      name: 'Shirt',
      price: 'EGP 250',
      description: 'boys t-shirt'),
  Product(
      image: 'assets/images/boypijama.jpg',
      name: 'Pijama',
      price: 'EGP 250',
      description: 'boys baby pijama'),
  Product(
      image: 'assets/images/boyjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'boys jacket'),
  Product(
      image: 'assets/images/boyshirt2.jpg',
      name: 'Shirt',
      price: 'EGP 250',
      description: 'boys t-shirt'),
  Product(
      image: 'assets/images/boypijama.jpg',
      name: 'Pijama',
      price: 'EGP 250',
      description: 'boys baby pijama'),
  Product(
      image: 'assets/images/boyjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'boys jacket'),
  Product(
    image: 'assets/images/boyshirt2.jpg',
    name: 'Shirt',
    price: 'EGP 250',
    description: 'boys t-shirt',
  ),
  Product(
      image: 'assets/images/boypijama.jpg',
      name: 'Pijama',
      price: 'EGP 250',
      description: 'boys baby pijama'),
  Product(
      image: 'assets/images/boyjacket.jpg',
      name: 'Jacket',
      price: 'EGP 250',
      description: 'boys jacket'),
  Product(
    image: 'assets/images/boyshirt2.jpg',
    name: 'Shirt',
    price: 'EGP 250',
    description: 'boys t-shirt',
  ),
];
List<Product> supermarket = [
  Product(
    name: 'Pasta & Rice',
    image: 'assets/images/pasta.png',
    price: 'EGP 60',
  ),
  Product(
    name: 'Oils',
    image: 'assets/images/oil.png',
    price: 'EGP 60',
  ),
  Product(
    name: 'Laundry & Cleaning',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
  ),
  Product(
    name: 'Milk & Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
  ),
  Product(
    name: 'Flour & Sugar',
    image: 'assets/images/flour.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Jarred food & Cans',
    image: 'assets/images/jars.png',
    price: 'EGP 60',
  ),
];
List<Product> toppicks = [
  Product(
    name: 'Oil',
    image: 'assets/images/oil1.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Sugar',
    image: 'assets/images/sugar1.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Flour',
    image: 'assets/images/flour1.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Jar',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Oil',
    image: 'assets/images/oil2.jpg',
    price: 'EGP 60',
  ),
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta2.jpg',
    price: 'EGP 60',
  ),
];
List<Product> pasta_rice = [
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta3.webp',
    price: 'EGP 60',
    description: 'italiano small rings pasta',
  ),
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta4.webp',
    price: 'EGP 60',
    description: 'italiano rings pasta',
  ),
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta5.webp',
    price: 'EGP 60',
    description: 'Al-doha pasta',
  ),
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta6.webp',
    price: 'EGP 60',
    description: 'Al-doha spaghetti pasta',
  ),
  Product(
    name: 'Pasta',
    image: 'assets/images/pasta2.jpg',
    price: 'EGP 60',
    description: 'regina spaghetti pasta',
  ),
  Product(
    name: 'Rice',
    image: 'assets/images/rice1.webp',
    price: 'EGP 60',
    description: 'Al-doha white rice',
  ),
  Product(
    name: 'Rice',
    image: 'assets/images/rice2.webp',
    price: 'EGP 60',
    description: 'Alsaa white rice',
  ),
  Product(
    name: 'Rice',
    image: 'assets/images/rice3.webp',
    price: 'EGP 60',
    description: 'Zamzam white rice',
  ),
  Product(
    name: 'Rice',
    image: 'assets/images/rice4.webp',
    price: 'EGP 60',
    description: 'Aldoha golden rice',
  ),
  Product(
    name: 'Rice',
    image: 'assets/images/rice5.webp',
    price: 'EGP 60',
    description: 'Ryhanna golden rice',
  ),
];
List<Product> oils = [
  Product(
      name: 'Oil',
      image: 'assets/images/oil3.webp',
      price: 'EGP 60',
      description: 'Afia sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil4.webp',
      price: 'EGP 60',
      description: 'Hala sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil5.webp',
      price: 'EGP 60',
      description: 'Afia corn oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil6.webp',
      price: 'EGP 60',
      description: 'Slite sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil7.webp',
      price: 'EGP 60',
      description: 'Crystal sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil8.webp',
      price: 'EGP 60',
      description: 'Slite corn oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil9.webp',
      price: 'EGP 60',
      description: 'Afia corn oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil10.webp',
      price: 'EGP 60',
      description: 'Hanady sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil1.jpg',
      price: 'EGP 60',
      description: 'Crystal sunflower oil'),
  Product(
      name: 'Oil',
      image: 'assets/images/oil2.jpg',
      price: 'EGP 60',
      description: 'Al-aseel sunflower oil'),
];
List<Product> sugar_flour = [
  Product(
    name: 'Sugar',
    image: 'assets/images/sugar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Sugar',
    image: 'assets/images/sugar2.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Sugar',
    image: 'assets/images/sugar3.webp',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Sugar',
    image: 'assets/images/sugar4.webp',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Flour',
    image: 'assets/images/flour1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Flour',
    image: 'assets/images/flour2.webp',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Flour',
    image: 'assets/images/flour3.webp',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Flour',
    image: 'assets/images/flour4.jpg',
    price: 'EGP 60',
    description: '',
  ),
];
List<Product> laundry = [
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Layndry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Laundry',
    image: 'assets/images/laundry.png',
    price: 'EGP 60',
    description: '',
  ),
];
List<Product> beverages = [
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    price: 'EGP 60',
    description: '',
  ),
];
List<Product> jars = [
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
  Product(
    name: 'Jars',
    image: 'assets/images/jar1.jpg',
    price: 'EGP 60',
    description: '',
  ),
];
List<Product> electronics = [
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
];
List<Product> computer = [
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/laptop.jpg',
      name: 'Laptop',
      price: 'EGP 000',
      description: ''),
];
List<Product> mobile = [
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/mobile.jpeg',
      name: 'Iphone 14',
      price: 'EGP 000',
      description: ''),
];
List<Product> tv = [
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/tv.jpeg',
      name: 'TV',
      price: 'EGP 000',
      description: ''),
];
List<Product> headphones = [
  Product(
    image: 'assets/images/headphones.jpeg',
    name: 'Headphones',
    price: 'EGP 000',
  ),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Headphones',
      price: 'EGP 000',
      description: ''),
  Product(
      image: 'assets/images/headphones.jpeg',
      name: 'Hea',
),
];