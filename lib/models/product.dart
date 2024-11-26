import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String desc;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.desc,
    required this.image
  });
}