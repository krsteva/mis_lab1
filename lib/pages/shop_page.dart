import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/widgets/products.dart';

import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Shop Page",
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.brown.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose your favourites:",
              style:
              TextStyle( fontWeight: FontWeight.bold,
                fontSize: 20,),),
            SizedBox(height: 1),
            SizedBox(
                height: 600,
                child: ListView.builder(
                    itemCount: products.length,
                    padding: const EdgeInsets.all(50),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (product, index) {
                      final product = products[index];
                      print(product.image);
                      return Products(product: product);
                    }))
          ],
        ));
  }
}
