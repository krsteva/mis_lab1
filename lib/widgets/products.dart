import 'package:flutter/material.dart';
import '../models/product.dart';
import 'details.dart';

class Products extends StatelessWidget {
  final Product product;

  const Products({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(product: product),
          ),
        );
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(

                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  product.image,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported, size: 50, color: Colors.brown);
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                product.desc,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 5),
              Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 16, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}