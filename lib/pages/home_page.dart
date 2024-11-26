import 'package:flutter/material.dart';
import 'package:untitled/pages/shop_page.dart';
import 'package:untitled/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.brown.shade600,
          title: const Text(
            "211158",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined,
                  size: 72, color: Colors.brown.shade700),
              const SizedBox(height: 10),
              const Text(
                "MILA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Premium quality products",
                style: TextStyle(color: Colors.brown.shade700),
              ),
              const SizedBox(height: 30),
              MyButton(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const ShopPage(),
                        ),
                      ),
                  child: const Icon(Icons.arrow_forward))
            ],
          ),
        ));
  }
}
