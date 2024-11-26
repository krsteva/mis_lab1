import 'package:flutter/material.dart';
import 'package:untitled/models/product.dart';

class Shop extends ChangeNotifier{
  final List<Product> shop = [
    Product(name: "Beautiful dress", price: 120, desc: "dress with a round neckline and a flared hem.", image: "https://static.zara.net/assets/public/6a42/edb3/96814f699b9a/3db759a9da0f/09854070601-e1/09854070601-e1.jpg?ts=1732205964628&w=506"),
    Product(name: "Dress to impress", price: 49, desc: "Featuring a high neck, sleeveless design, draped fabric and a matching inner lining.", image: "https://static.zara.net/assets/public/2a3e/eafb/19634b60b739/60df70252904/04764282800-e1/04764282800-e1.jpg?ts=1728558927090&w=506"),
    Product(name: "Red magic", price: 26, desc: "Midi dress made from a soft fabric%", image: "https://static.zara.net/assets/public/68b9/f9a4/681b4568aed7/42ed95b31025/00264737681-p/00264737681-p.jpg?ts=1728644826086&w=506"),
    Product(name: "Satin dress", price: 79.99, desc: "Perfect long satin dress", image: "https://static.zara.net/assets/public/fd11/14a4/748846fc986c/3e9fc2b4d744/04661271684-e1/04661271684-e1.jpg?ts=1731403496226&w=506" ),
    Product(name: "Denim dress", price: 49.99, desc: "Collared dress with long sleeves. Front patch pockets. Fitted waist. Front button fastening.", image: "https://static.zara.net/assets/public/bf17/91f0/c1b84841a941/97633fe70739/01879226407-e1/01879226407-e1.jpg?ts=1726232167363&w=1126" ),
    Product(name: "Draped mini dress", price: 67.99, desc: "cotton 100%", image: "https://static.zara.net/assets/public/6c20/26a5/790742408728/5b7e5668e6e6/03152233818-e1/03152233818-e1.jpg?ts=1727363544657&w=1126" ),
    Product(name: "black dress", price: 53.99, desc: "Long sleeve dress with a round neckline and a flared hem.", image: "https://static.zara.net/assets/public/0845/8ae7/65204aab8dfe/3204d5c50f79/09598230401-e1/09598230401-e1.jpg?ts=1730389217259&w=1126" ),
  ];

}